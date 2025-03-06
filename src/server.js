const express = require("express");
const { Pool } = require("pg");

// Database configuration
const pool = new Pool({
  connectionString:
    "<postgresurl>",
});

// Database queries
const queries = {
  getRecentWorkouts: `
    SELECT mg.name as muscle_group, COUNT(*) as count, MAX(w.workout_date) as last_performed
    FROM WorkoutExercises we
    JOIN Workouts w ON we.workout_id = w.id
    JOIN Exercises e ON we.exercise_id = e.id
    JOIN MuscleGroups mg ON e.muscle_group_id = mg.id
    WHERE w.workout_date >= (
      SELECT MIN(workout_date) 
      FROM (SELECT workout_date FROM Workouts ORDER BY workout_date DESC LIMIT 10) AS last_eight
    )
    GROUP BY mg.name
    ORDER BY count ASC, last_performed ASC
  `,
  
  getRecentWorkoutExercises: `
    SELECT we.exercise_id, mg.name as muscle_group 
    FROM WorkoutExercises we
    JOIN Exercises e ON we.exercise_id = e.id
    JOIN MuscleGroups mg ON e.muscle_group_id = mg.id
    WHERE we.workout_id IN (SELECT id FROM Workouts ORDER BY workout_date DESC LIMIT 1)
  `,

  getExercisesByMuscleGroups: `
    WITH RankedExercises AS (
      SELECT 
        e.id, 
        e.name, 
        mg.name as muscle_group,
        COALESCE(MAX(el.performed_at), '1970-01-01') AS last_performed,
        ROW_NUMBER() OVER (PARTITION BY mg.name ORDER BY COALESCE(MAX(el.performed_at), '1970-01-01') ASC) AS rank
      FROM Exercises e
      JOIN MuscleGroups mg ON e.muscle_group_id = mg.id
      LEFT JOIN ExerciseLogs el ON e.id = el.exercise_id
      WHERE mg.name = ANY($1::text[])
      AND e.id NOT IN (
        SELECT exercise_id 
        FROM WorkoutExercises we
        WHERE workout_id IN (SELECT id FROM Workouts ORDER BY workout_date DESC LIMIT 1)
      )
      GROUP BY e.id, mg.name
    )
    SELECT id, name, muscle_group, last_performed
    FROM RankedExercises
    WHERE rank = 1
  `,

  insertWorkout: "INSERT INTO Workouts (workout_date, start_time, duration) VALUES ($1, $2, $3) RETURNING id",
  insertWorkoutExercise: "INSERT INTO WorkoutExercises (workout_id, exercise_id) VALUES ($1, $2)",
  getWorkoutById: "SELECT * FROM Workouts WHERE id = $1",
  getWorkoutExercises: `
    SELECT e.*, mg.name as muscle_group 
    FROM Exercises e 
    INNER JOIN WorkoutExercises we ON e.id = we.exercise_id 
    INNER JOIN MuscleGroups mg ON e.muscle_group_id = mg.id
    WHERE we.workout_id = $1
  `,
  getAllWorkouts: "SELECT * FROM Workouts ORDER BY workout_date DESC"
};

// Input validation middleware
const validateWorkoutInput = (req, res, next) => {
  const { workout_date, start_time, duration, exercises } = req.body;
  
  if (!workout_date || !exercises) {
    return res.status(400).json({ 
      error: "Missing required fields: workout_date, start_time, duration, exercises" 
    });
  }

  if (!Array.isArray(exercises) || exercises.length === 0) {
    return res.status(400).json({ 
      error: "Exercises must be a non-empty array" 
    });
  }

  next();
};

// Error handling middleware
const errorHandler = (err, req, res, next) => {
  console.error(err);
  res.status(500).json({ 
    error: "An internal server error occurred",
    details: process.env.NODE_ENV === 'development' ? err.message : undefined
  });
};

const app = express();
app.use(express.json());

// Get daily workout plan
app.get("/workout", async (req, res, next) => {
  try {
    const recentWorkouts = await pool.query(queries.getRecentWorkouts);
    const recentWorkoutExercises = await pool.query(queries.getRecentWorkoutExercises);

    let selectedMuscleGroups = recentWorkouts.rows.map(row => row.muscle_group);
    
    // Filter out blocked muscle groups
    const blockConsecutiveMuscleGroups = ["Cardio/Lower Body"];
    const blockedMuscleGroups = recentWorkoutExercises.rows
      .filter(row => blockConsecutiveMuscleGroups.includes(row.muscle_group))
      .map(exercise => exercise.muscle_group);

    selectedMuscleGroups = selectedMuscleGroups
      .filter(muscleGroup => !blockedMuscleGroups.includes(muscleGroup))
      .slice(0, 4);

    const exercises = await pool.query(
      queries.getExercisesByMuscleGroups,
      [selectedMuscleGroups]
    );

    res.json(exercises.rows);
  } catch (err) {
    next(err);
  }
});

// Log a new workout session
app.post("/workout", validateWorkoutInput, async (req, res, next) => {
  const { workout_date, start_time, duration, exercises } = req.body;
  
  try {
    const result = await pool.query(queries.insertWorkout, [workout_date, start_time, duration]);
    const workoutId = result.rows[0].id;

    await Promise.all(
      exercises.map(exerciseId => 
        pool.query(queries.insertWorkoutExercise, [workoutId, exerciseId])
      )
    );

    res.status(201).json({ message: "Workout logged", workoutId });
  } catch (err) {
    next(err);
  }
});

// Get details of a specific workout
app.get("/workout/:id", async (req, res, next) => {
  const { id } = req.params;
  
  try {
    const [workout, exercises] = await Promise.all([
      pool.query(queries.getWorkoutById, [id]),
      pool.query(queries.getWorkoutExercises, [id])
    ]);

    if (!workout.rows[0]) {
      return res.status(404).json({ error: "Workout not found" });
    }

    res.json({ 
      workout: workout.rows[0], 
      exercises: exercises.rows 
    });
  } catch (err) {
    next(err);
  }
});

// Get a list of past workouts
app.get("/workouts", async (req, res, next) => {
  try {
    const workouts = await pool.query(queries.getAllWorkouts);
    res.json(workouts.rows);
  } catch (err) {
    next(err);
  }
});

// Error handling middleware should be last
app.use(errorHandler);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

module.exports = app;
