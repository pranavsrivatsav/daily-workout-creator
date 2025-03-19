create table workouts (
    id serial primary key,
    date date not null,
    exercise_ids integer[] not null,
);