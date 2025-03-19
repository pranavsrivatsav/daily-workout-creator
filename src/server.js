const express = require("express");
const { Pool } = require("pg");
const { exec } = require("child_process");

// Database configuration
const pool = new Pool({
  connectionString:
    "postgresql://postgres.mmkarhkguxkmkvxxktjc:kd9ba2SNr4Ts2iXo@aws-0-ap-south-1.pooler.supabase.com:5432/postgres",
});

// Database queries
const queries = {
  muscleGroupOrderedByFrequency: `
    select count(*) count, rewd.muscle_group_id  from recent_exercise_workout_dates rewd 
    where rewd.recent_workout_date  > (SELECT CURRENT_DATE - INTERVAL '30 days')
    group by muscle_group_id
    order by count asc
  `,
  leastRecentlyPerformedExercisesByMuscleGroup: `
    SELECT DISTINCT ON (muscle_group_id) * 
    FROM recent_exercise_workout_dates 
    WHERE muscle_group_id IN (SELECT id from musclegroups)  
    and recommend_flag = true
    ORDER BY muscle_group_id, recent_workout_date ASC;
  `,
  getAllExercises: `
    SELECT e.name as exercise_name, e.id as exercise_id, mg.name as muscle_group_name, mg.id as muscle_group_id 
    FROM Exercises e 
    JOIN MuscleGroups mg ON e.muscle_group_id = mg.id 
    ORDER BY mg.name, e.name
  `,
  getAllExercisesByMuscleGroup:
    "SELECT * FROM Exercises WHERE muscle_group_id = $1",
  getAllMuscleGroups: "SELECT * FROM MuscleGroups",
  createWorkout:
    "INSERT INTO Workouts (date, exercise_ids) VALUES ($1, $2) RETURNING id",
  getWorkouts: `
    SELECT w.id as workout_id,TO_CHAR(w.date AT TIME ZONE 'UTC', 'DD-MON-YYYY') as date, 
    json_agg(
      json_build_object(
        'exercise_id', e.id, 
        'exercise_name', e.name, 
        'muscle_group_name', mg.name
      )
    ) as exercises
    FROM Workouts w
    JOIN Exercises e ON e.id = ANY(w.exercise_ids)
    JOIN MuscleGroups mg ON e.muscle_group_id = mg.id
    GROUP BY w.id
    ORDER BY w.date DESC
  `,
  searchExercises: `
    SELECT e.name as exercise_name, e.id as exercise_id, mg.name as muscle_group_name, mg.id as muscle_group_id
    FROM Exercises e
    JOIN MuscleGroups mg ON e.muscle_group_id = mg.id
    WHERE e.name ILIKE $1
    ORDER BY mg.name, e.name
  `,
};

// Input validation middleware
const validateWorkoutInput = (req, res, next) => {
  const { date, exercise_ids } = req.body;

  if (!date || !exercise_ids) {
    return res.status(400).json({
      error: "Missing required fields: date, exercise_ids",
    });
  }

  if (!Array.isArray(exercise_ids) || exercise_ids.length === 0) {
    return res.status(400).json({
      error: "exercise_ids must be a non-empty array",
    });
  }

  next();
};

// Error handling middleware
const errorHandler = (err, req, res, next) => {
  console.error(err);
  res.status(500).json({
    error: "An internal server error occurred",
    details: process.env.NODE_ENV === "development" ? err.message : undefined,
  });
};

const app = express();
app.use(express.json());

// Get a list of exercises by muscle group id query parameter
app.get("/exercises", async (req, res, next) => {
  const { muscleGroupId } = req.query;

  try {
    let exercises;
    if (muscleGroupId) {
      exercises = await pool.query(queries.getAllExercisesByMuscleGroup, [
        Number(muscleGroupId),
      ]);
    } else {
      exercises = await pool.query(queries.getAllExercises);
    }

    res.json(exercises.rows);
  } catch (err) {
    next(err);
  }
});

//Get a list of all muscle groups
app.get("/muscle-groups", async (req, res, next) => {
  try {
    const muscleGroups = await pool.query(queries.getAllMuscleGroups);
    res.json(muscleGroups.rows);
  } catch (err) {
    next(err);
  }
});

// Generate a workout plan with optimal exercise distribution
app.get("/generate-workout", async (req, res, next) => {
  try {

    // muscle groups sorted by frequency (least to most frequent)
    const sortedMuscleGroups = (await pool.query(queries.muscleGroupOrderedByFrequency)).rows.map(
      (row) => row.muscle_group_id
    );
    // Select top 5 least used muscle groups
    const selectedMuscleGroups = sortedMuscleGroups.slice(0, 5);

    const leastRecentlyPerformedExerciseForEachMuscleGroup = (
      await pool.query(queries.leastRecentlyPerformedExercisesByMuscleGroup)
    ).rows;

    const selectedExercises = selectedMuscleGroups.map((muscleGroupId) => {
      const exercise = leastRecentlyPerformedExerciseForEachMuscleGroup.find(
        (exercise) => exercise.muscle_group_id === muscleGroupId
      );
      return exercise;
    });


    res.json({
      date: new Date().toISOString().split("T")[0],
      exercises: selectedExercises,
    });
  } catch (err) {
    next(err);
  }
});

// Create a new workout
app.post("/workouts", validateWorkoutInput, async (req, res, next) => {
  const { date, exercise_ids } = req.body;

  try {
    const result = await pool.query(queries.createWorkout, [
      date,
      exercise_ids,
    ]);
    res.status(201).json({
      id: result.rows[0].id,
      message: "Workout created successfully",
    });
  } catch (err) {
    next(err);
  }
});

// Get all workouts
app.get("/workouts", async (req, res, next) => {
  try {
    const workouts = await pool.query(queries.getWorkouts);
    res.json(workouts.rows);
  } catch (err) {
    next(err);
  }
});

//search for exercises
app.get("/search-exercises", async (req, res, next) => {
  const { name } = req.query;
  console.log(name);
  try {
    const exercises = await pool.query(queries.searchExercises, [`%${name}%`]);
    res.json(exercises.rows);
  } catch (err) {
    next(err);
  }
});

// Error handling middleware should be last
app.use(errorHandler);

const PORT = process.env.PORT || 8000;
const server = app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

module.exports = app;
