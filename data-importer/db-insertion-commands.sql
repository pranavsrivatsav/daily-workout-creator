-- Insert muscle groups (extracted from the exercise data)
INSERT INTO muscle_groups (name) VALUES 
('Legs'),
('Chest'),
('Back'),
('Shoulders'),
('Arms'),
('Core'),
('Cardio');


-- Insert exercises with their correct muscle group ids
INSERT INTO exercises (name, muscle_group_id)
SELECT 'Lying Leg Curl (Machine)', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Leg Press (Machine)', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Lunge (Dumbbell)', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Squat (Machine)', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Counter Weight Squat', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Hack Squat (Machine)', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Lunge (Bodyweight)', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Goblet Squat', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Squat (Bodyweight)', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Deadlift (Trap bar)', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Seated Calf Raise', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Standing Calf Raise', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Glute Bridge', mg.id FROM musclegroups mg WHERE mg.name = 'Legs'
UNION ALL SELECT 'Iso-Lateral Chest Press (Machine)', mg.id FROM musclegroups mg WHERE mg.name = 'Chest'
UNION ALL SELECT 'Incline Chest Press (Machine)', mg.id FROM musclegroups mg WHERE mg.name = 'Chest'
UNION ALL SELECT 'Chest Fly (Machine)', mg.id FROM musclegroups mg WHERE mg.name = 'Chest'
UNION ALL SELECT 'Bench Press (Dumbbell)', mg.id FROM musclegroups mg WHERE mg.name = 'Chest'
UNION ALL SELECT 'Incline Bench Press (Dumbbell)', mg.id FROM musclegroups mg WHERE mg.name = 'Chest'
UNION ALL SELECT 'Incline Push Ups', mg.id FROM musclegroups mg WHERE mg.name = 'Chest'
UNION ALL SELECT 'Push Up', mg.id FROM musclegroups mg WHERE mg.name = 'Chest'
UNION ALL SELECT 'Chest Dip (Assisted)', mg.id FROM musclegroups mg WHERE mg.name = 'Chest'
UNION ALL SELECT 'Bench Dip', mg.id FROM musclegroups mg WHERE mg.name = 'Arms'
UNION ALL SELECT 'Seated Cable Row - V Grip (Cable)', mg.id FROM musclegroups mg WHERE mg.name = 'Back'
UNION ALL SELECT 'Iso-Lateral Low Row', mg.id FROM musclegroups mg WHERE mg.name = 'Back'
UNION ALL SELECT 'Seated Cable Row - Bar Grip', mg.id FROM musclegroups mg WHERE mg.name = 'Back'
UNION ALL SELECT 'Lat Pulldown - Close Grip (Cable)', mg.id FROM musclegroups mg WHERE mg.name = 'Back'
UNION ALL SELECT 'Reverse Grip Lat Pulldown (Cable)', mg.id FROM musclegroups mg WHERE mg.name = 'Back'
UNION ALL SELECT 'Pull Up (Assisted)', mg.id FROM musclegroups mg WHERE mg.name = 'Back'
UNION ALL SELECT 'Inverted Row', mg.id FROM musclegroups mg WHERE mg.name = 'Back'
UNION ALL SELECT 'Inverted Row Underhand', mg.id FROM musclegroups mg WHERE mg.name = 'Back'
UNION ALL SELECT 'Shrug (Dumbbell)', mg.id FROM musclegroups mg WHERE mg.name = 'Back'
UNION ALL SELECT 'Arnold Press (Dumbbell)', mg.id FROM musclegroups mg WHERE mg.name = 'Shoulders'
UNION ALL SELECT 'Lateral Raise (Dumbbell)', mg.id FROM musclegroups mg WHERE mg.name = 'Shoulders'
UNION ALL SELECT 'Seated Shoulder Press (Machine)', mg.id FROM musclegroups mg WHERE mg.name = 'Shoulders'
UNION ALL SELECT 'Upright Row (Cable)', mg.id FROM musclegroups mg WHERE mg.name = 'Shoulders'
UNION ALL SELECT 'Rear Delt Reverse Fly (Machine)', mg.id FROM musclegroups mg WHERE mg.name = 'Shoulders'
UNION ALL SELECT 'EZ Bar Biceps Curl', mg.id FROM musclegroups mg WHERE mg.name = 'Arms'
UNION ALL SELECT 'Preacher Curl (Machine)', mg.id FROM musclegroups mg WHERE mg.name = 'Arms'
UNION ALL SELECT 'Preacher Curl (Barbell)', mg.id FROM musclegroups mg WHERE mg.name = 'Arms'
UNION ALL SELECT 'Hammer Curl (Dumbbell)', mg.id FROM musclegroups mg WHERE mg.name = 'Arms'
UNION ALL SELECT 'Bicep Curl (Dumbbell)', mg.id FROM musclegroups mg WHERE mg.name = 'Arms'
UNION ALL SELECT 'Triceps Rope Pushdown', mg.id FROM musclegroups mg WHERE mg.name = 'Arms'
UNION ALL SELECT 'Single Arm Tricep Extension (Dumbbell)', mg.id FROM musclegroups mg WHERE mg.name = 'Arms'
UNION ALL SELECT 'Triceps Dip (Assisted)', mg.id FROM musclegroups mg WHERE mg.name = 'Arms'
UNION ALL SELECT 'Triceps Dip (Weighted)', mg.id FROM musclegroups mg WHERE mg.name = 'Arms'
UNION ALL SELECT 'Russian Twist (Weighted)', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Lying Leg Raise', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Cable Crunch', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Side Plank', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Long Lever Plank', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Crunch', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Russian Twist (Bodyweight)', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Mountain Climber', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Heel Taps', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Flutter Kicks', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Toe Touch', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Plank', mg.id FROM musclegroups mg WHERE mg.name = 'Core'
UNION ALL SELECT 'Treadmill', mg.id FROM musclegroups mg WHERE mg.name = 'Cardio'
UNION ALL SELECT 'Cycling', mg.id FROM musclegroups mg WHERE mg.name = 'Cardio'
UNION ALL SELECT 'Running', mg.id FROM musclegroups mg WHERE mg.name = 'Cardio'
UNION ALL SELECT 'Elliptical Trainer', mg.id FROM musclegroups mg WHERE mg.name = 'Cardio'
UNION ALL SELECT 'Burpee', mg.id FROM musclegroups mg WHERE mg.name = 'Cardio'
UNION ALL SELECT 'High Knees', mg.id FROM musclegroups mg WHERE mg.name = 'Cardio';

-- Insert workouts

INSERT INTO workouts (date, exercise_ids) VALUES ('8 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('10 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('12 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Goblet Squat', 'Leg Press (Machine)', 'Hack Squat (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('15 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Incline Chest Press (Machine)', 'Seated Shoulder Press (Machine)', 'Chest Fly (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('16 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('17 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('18 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('19 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('20 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('21 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Reverse Grip Lat Pulldown (Cable)', 'Rear Delt Reverse Fly (Machine)', 'Upright Row (Cable)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('22 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('23 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Goblet Squat', 'Leg Press (Machine)', 'Hack Squat (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('24 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Hammer Curl (Dumbbell)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('27 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('28 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Deadlift (Trap bar)', 'Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('29 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Incline Chest Press (Machine)', 'Seated Shoulder Press (Machine)', 'Chest Fly (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('30 Jun 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('3 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('4 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('5 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Upright Row (Cable)', 'Shrug (Dumbbell)', 'Hammer Curl (Dumbbell)', 'Rear Delt Reverse Fly (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('8 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Lat Pulldown - Close Grip (Cable)', 'Preacher Curl (Machine)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('10 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Goblet Squat', 'Leg Press (Machine)', 'Hack Squat (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('16 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('17 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Incline Chest Press (Machine)', 'Seated Shoulder Press (Machine)', 'Chest Fly (Machine)', 'Arnold Press (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('18 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('26 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Burpee', 'High Knees', 'Mountain Climber', 'Push Up'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('29 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('30 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('31 Jul 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Goblet Squat', 'Leg Press (Machine)', 'Squat (Machine)', 'Lunge (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('2 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Heel Taps', 'Flutter Kicks', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('3 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('6 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('12 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Reverse Grip Lat Pulldown (Cable)', 'Rear Delt Reverse Fly (Machine)', 'Upright Row (Cable)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('14 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Deadlift (Trap bar)', 'Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('17 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('20 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Hammer Curl (Dumbbell)', 'EZ Bar Biceps Curl', 'Bench Press (Dumbbell)', 'Incline Chest Press (Machine)', 'Seated Shoulder Press (Machine)', 'Chest Fly (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('22 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('24 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Goblet Squat', 'Leg Press (Machine)', 'Squat (Machine)', 'Lunge (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('25 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('26 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('27 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Reverse Grip Lat Pulldown (Cable)', 'Rear Delt Reverse Fly (Machine)', 'Upright Row (Cable)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('28 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Deadlift (Trap bar)', 'Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('29 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('30 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Incline Chest Press (Machine)', 'Seated Shoulder Press (Machine)', 'Chest Fly (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('31 Aug 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('1 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Hammer Curl (Dumbbell)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('2 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Goblet Squat', 'Leg Press (Machine)', 'Squat (Machine)', 'Lunge (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('3 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('4 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('5 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('6 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Deadlift (Trap bar)', 'Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('7 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('8 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Reverse Grip Lat Pulldown (Cable)', 'Rear Delt Reverse Fly (Machine)', 'Upright Row (Cable)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('9 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('10 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Incline Chest Press (Machine)', 'Chest Fly (Machine)', 'Seated Shoulder Press (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('11 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Goblet Squat', 'Deadlift (Trap bar)', 'Squat (Machine)', 'Lunge (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('12 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('13 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Hammer Curl (Dumbbell)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('14 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('15 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('16 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Leg Press (Machine)', 'Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('17 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('18 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Reverse Grip Lat Pulldown (Cable)', 'Rear Delt Reverse Fly (Machine)', 'Upright Row (Cable)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('20 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Goblet Squat', 'Leg Press (Machine)', 'Squat (Machine)', 'Lunge (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('22 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Incline Chest Press (Machine)', 'Chest Fly (Machine)', 'Seated Shoulder Press (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('24 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Hammer Curl (Dumbbell)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('25 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('26 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Deadlift (Trap bar)', 'Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('27 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('29 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Reverse Grip Lat Pulldown (Cable)', 'Rear Delt Reverse Fly (Machine)', 'Upright Row (Cable)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('30 Sep 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('1 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Goblet Squat', 'Leg Press (Machine)', 'Squat (Machine)', 'Lunge (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('3 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bicep Curl (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('4 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Cycling'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('5 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('6 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Cycling'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('7 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Incline Chest Press (Machine)', 'Chest Fly (Machine)', 'Seated Shoulder Press (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('8 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('9 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Hammer Curl (Dumbbell)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('11 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Goblet Squat', 'Leg Press (Machine)', 'Squat (Machine)', 'Lunge (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('12 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('13 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('14 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise', 'Deadlift (Trap bar)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('16 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bicep Curl (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('18 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('19 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Squat (Bodyweight)', 'Lunge', 'Glute Bridge', 'Standing Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('21 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Incline Push Ups', 'Inverted Row', 'Inverted row underhand'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('22 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('23 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Squat (Bodyweight)', 'Lunge', 'Glute Bridge', 'Standing Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('24 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bicep Curl (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('25 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks', 'Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('26 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Incline Push Ups', 'Bench Dip', 'Cycling'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('28 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Squat (Bodyweight)', 'Lunge', 'Glute Bridge', 'Standing Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('29 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bicep Curl (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('31 Oct 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'long lever plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('1 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Reverse Grip Lat Pulldown (Cable)', 'Rear Delt Reverse Fly (Machine)', 'Upright Row (Cable)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('2 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Elliptical Trainer'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('3 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Deadlift (Trap bar)', 'Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('4 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks', 'long lever plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('5 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Incline Bench Press (Dumbbell)', 'Chest Fly (Machine)', 'Seated Shoulder Press (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('6 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Counter Weight Squat', 'Leg Press (Machine)', 'Squat (Machine)', 'Lunge (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('7 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Hammer Curl (Dumbbell)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('11 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Russian Twist (Bodyweight)', 'Toe Touch', 'Side Plank', 'long lever plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('12 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('13 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise', 'Deadlift (Trap bar)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('14 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Reverse Grip Lat Pulldown (Cable)', 'Rear Delt Reverse Fly (Machine)', 'Upright Row (Cable)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('16 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('17 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Mountain Climber', 'Heel Taps', 'Flutter Kicks'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('18 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Counter Weight Squat', 'Leg Press (Machine)', 'Squat (Machine)', 'Lunge (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('19 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Incline Chest Press (Machine)', 'Chest Fly (Machine)', 'Seated Shoulder Press (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('20 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Russian Twist (Bodyweight)', 'Side Plank', 'long lever plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('21 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Hammer Curl (Dumbbell)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('23 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('24 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('25 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise', 'Deadlift (Trap bar)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('27 Nov 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Reverse Grip Lat Pulldown (Cable)', 'Rear Delt Reverse Fly (Machine)', 'Upright Row (Cable)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('6 Dec 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Russian Twist (Bodyweight)', 'Side Plank', 'long lever plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('9 Dec 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Incline Chest Press (Machine)', 'Chest Fly (Machine)', 'Seated Shoulder Press (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('11 Dec 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Counter Weight Squat', 'Leg Press (Machine)', 'Squat (Machine)', 'Lunge (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('13 Dec 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Hammer Curl (Dumbbell)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('17 Dec 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Crunch', 'Russian Twist (Bodyweight)', 'Side Plank', 'long lever plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('18 Dec 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise', 'Deadlift (Trap bar)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('24 Dec 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('26 Dec 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Dip (Weighted)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)', 'Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('27 Dec 2024', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Russian Twist (Weighted)', 'Side Plank', 'long lever plank', 'Cable Crunch'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('5 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('7 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Hammer Curl (Dumbbell)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('9 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise', 'Squat (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('10 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Cable Crunch', 'Russian Twist (Weighted)', 'Side Plank', 'long lever plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('16 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Reverse Grip Lat Pulldown (Cable)', 'Rear Delt Reverse Fly (Machine)', 'Pull Up (Assisted)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('17 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('18 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Cable Crunch', 'Russian Twist (Weighted)', 'Side Plank', 'long lever plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('20 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Counter Weight Squat', 'Leg Press (Machine)', 'Lunge (Dumbbell)', 'Deadlift (Trap bar)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('21 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Incline Chest Press (Machine)', 'Chest Fly (Machine)', 'Seated Shoulder Press (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('22 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Cable Crunch', 'Russian Twist (Weighted)', 'Side Plank', 'long lever plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('23 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Preacher Curl (Barbell)', 'Chest Dip (Assisted)', 'Hammer Curl (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('24 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Triceps Rope Pushdown', 'Single Arm Tricep Extension (Dumbbell)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('26 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Running'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('27 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'Leg Extension (Machine)', 'Seated Calf Raise', 'Squat (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('28 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Russian Twist (Weighted)', 'Side Plank', 'long lever plank', 'Cable Crunch'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('29 Jan 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Cycling'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('4 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Cable Row - Bar Grip', 'Pull Up (Assisted)', 'Chest Fly (Machine)', 'Seated Shoulder Press (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('10 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Lat Pulldown - Close Grip (Cable)', 'Triceps Rope Pushdown', 'Preacher Curl (Barbell)', 'Treadmill'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('11 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Shrug (Dumbbell)', 'Arnold Press (Dumbbell)', 'Deadlift (Trap bar)', 'Incline Chest Press (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('12 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Raise', 'Leg Press (Machine)', 'Russian Twist (Weighted)', 'EZ Bar Biceps Curl'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('13 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lateral Raise (Dumbbell)', 'Rear Delt Reverse Fly (Machine)', 'Iso-Lateral Chest Press (Machine)', 'Seated Calf Raise'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('17 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Leg Extension (Machine)', 'Bench Press (Dumbbell)', 'Hammer Curl (Dumbbell)', 'Triceps Dip (Assisted)', 'Treadmill'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('18 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'Seated Cable Row - V Grip (Cable)', 'Triceps Rope Pushdown', 'Cable Crunch'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('19 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Preacher Curl (Machine)', 'Incline Chest Press (Machine)', 'Side Plank', 'long lever plank', 'Treadmill'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('24 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Squat (Machine)', 'Seated Shoulder Press (Machine)', 'Lat Pulldown - Close Grip (Cable)', 'Chest Fly (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('26 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('EZ Bar Biceps Curl', 'Deadlift (Trap bar)', 'Lying Leg Raise', 'Russian Twist (Weighted)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('27 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Arnold Press (Dumbbell)', 'Lateral Raise (Dumbbell)', 'Iso-Lateral Chest Press (Machine)', 'Cable Crunch', 'Treadmill'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('28 Feb 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Calf Raise', 'Pull Up (Assisted)', 'Shrug (Dumbbell)', 'Leg Extension (Machine)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('4 Mar 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Bench Press (Dumbbell)', 'Preacher Curl (Machine)', 'Rear Delt Reverse Fly (Machine)', 'Side Plank'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('5 Mar 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Seated Shoulder Press (Machine)', 'Reverse Grip Lat Pulldown (Cable)', 'Triceps Dip (Assisted)', 'Treadmill'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('7 Mar 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lunge (Dumbbell)', 'Upright Row (Cable)', 'long lever plank', 'Single Arm Tricep Extension (Dumbbell)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('11 Mar 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Leg Press (Machine)', 'Hammer Curl (Dumbbell)', 'Incline Chest Press (Machine)', 'Iso-Lateral Low Row'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('12 Mar 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lateral Raise (Dumbbell)', 'Chest Fly (Machine)', 'Lying Leg Raise', 'Treadmill'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('13 Mar 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Deadlift (Trap bar)', 'Arnold Press (Dumbbell)', 'Triceps Rope Pushdown', 'Russian Twist (Weighted)'))));
INSERT INTO workouts (date, exercise_ids) VALUES ('14 Mar 2025', (SELECT ARRAY(SELECT id from exercises where name in ('Lying Leg Curl (Machine)', 'EZ Bar Biceps Curl', 'Iso-Lateral Chest Press (Machine)', 'Seated Cable Row - V Grip (Cable)'))));
