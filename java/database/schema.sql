BEGIN TRANSACTION;

DROP TABLE IF EXISTS class_schedule;
DROP TABLE IF EXISTS goals;
DROP TABLE IF EXISTS equipment_usage;
DROP TABLE IF EXISTS workout;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id SERIAL,
	name varchar(50) NOT NULL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	email varchar(60) NOT NULL UNIQUE,
	role varchar(50) NOT NULL DEFAULT 'Member',
	image_file varchar(500) NOT NULL UNIQUE,
	goal varchar(50) NOT NULL,
--	class_id integer,

	CONSTRAINT PK_user PRIMARY KEY (user_id),
--	CONSTRAINT FK_class_schedule FOREIGN KEY (class_id) references class_schedule (class_id)
);

CREATE TABLE workout (
    workout_id SERIAL,
    user_id integer NOT NULL,
    check_in timestamp default CURRENT_TIMESTAMP,
    check_out timestamp default CURRENT_TIMESTAMP,

    CONSTRAINT PK_workouts PRIMARY KEY (workout_id),
    CONSTRAINT FK_user FOREIGN KEY (user_id) references users

);

CREATE TABLE equipment_usage (
    equipment_id SERIAL,
    workout_id integer NOT NULL,
    exercise_type varchar(50) NOT NULL,
    workout_date timestamp default CURRENT_DATE,
    sets integer,
    reps integer,
    weight DECIMAL(5, 2),

    CONSTRAINT PK_equipment_usage PRIMARY KEY (equipment_id),
    CONSTRAINT FK_workout FOREIGN KEY (workout_id) references workout,
    CONSTRAINT weight_limit CHECK (weight >= 0)
);

--CREATE TABLE class_schedule (
--    class_id SERIAL,
--    class_name varchar(50) NOT NULL,
--    class_instructor varchar(50) NOT NULL,
--    class_description varchar(200),
--    class_time time NOT NULL,
--    class_day varchar(10) NOT NULL,
--
--    CONSTRAINT PK_class_schedule PRIMARY KEY (class_id)
--
--);

COMMIT TRANSACTION;
 --class_schedule table is giving errors in postgresql
