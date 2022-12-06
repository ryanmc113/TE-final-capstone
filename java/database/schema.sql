BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id SERIAL,
	name varchar(50) NOT NULL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	email varchar(60) NOT NULL UNIQUE,
	role varchar(50) NOT NULL DEFAULT 'Member',
	image_file varchar(500) NOT NULL UNIQUE,

	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

--CREATE TABLE employee (
--    employee_id SERIAL,
--    user_id integer NOT NULL,
--
--    CONSTRAINT PK_employee PRIMARY KEY (employee_id),
--    CONSTRAINT FK_user FOREIGN KEY (user_id)
--);

CREATE TABLE workout (
    workout_id SERIAL,
    user_id NOT NULL,
    check_in CURRENT_TIMESTAMP,
    check_out CURRENT_TIMESTAMP,

    CONSTRAINT PK_workouts PRIMARY KEY (workout_id),
    CONSTRAINT FK_user FOREIGN KEY (user_id);

);

CREATE TABLE equipment_usage (
    equipment_id SERIAL,
    workout_id NOT NULL,
    exercise_type varchar(50) NOT NULL,
    workout_date CURRENT_DATE,
    sets integer,
    reps integer,
    weight DECIMAL(5, 2),

    CONSTRAINT PK_equipment_usage PRIMARY KEY (equipment_id),
    CONSTRAINT FK_workout FOREIGN KEY (workout_id),
    CONSTRAINT weight_limit CHECK (weight >= 0)
);

CREATE TABLE goals (
    goal_id SERIAL,
    user_id NOT NULL,
    goal_type varchar(50) NOT NULL;

    CONSTRAINT PK_goals PRIMARY KEY (goal_id),
    CONSTRAINT FK_user FOREIGN KEY (user_id);
);

COMMIT TRANSACTION;
