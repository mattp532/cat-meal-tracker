CREATE DATABASE cattracker;

\c cattracker;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE groups (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE user_groups (
    user_id INT REFERENCES users(id),
    group_id INT REFERENCES groups(id),
    PRIMARY KEY (user_id, group_id)
);

CREATE TABLE cats (
    cat_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    group_id REFERENCES groups(id),

);

CREATE TABLE meals (
    id SERIAL PRIMARY KEY,
    cat_id INT REFERENCES cats(cat_id),
    meal_type TEXT NOT NULL CHECK (meal_type IN ('breakfast', 'lunch', 'dinner')),
    meal_time TIMESTAMP NOT NULL,
    eaten BOOLEAN DEFAULT FALSE
);
