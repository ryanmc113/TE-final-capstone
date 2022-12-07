BEGIN TRANSACTION;

--DROP TABLE IF EXISTS class_schedule;
DROP TABLE IF EXISTS equipment_usage;
DROP TABLE IF EXISTS workout;
DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS users;

CREATE TABLE users (

	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL default 'Member',

--	class_id integer REFERENCES class_schedule(id),

	CONSTRAINT PK_user PRIMARY KEY (user_id)

);

CREATE TABLE account (
	account_id SERIAL,
	user_id integer NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar (50) NOT NULL,
	email varchar(60) NOT NULL UNIQUE,
	goal varchar(50) NOT NULL,
	media_url varchar(500) NOT NULL UNIQUE,

	CONSTRAINT PK_account PRIMARY KEY (account_id),
	CONSTRAINT FK_account FOREIGN KEY (user_id) References users

);

CREATE TABLE visit_log (
    visit_id SERIAL,
    account_id integer NOT NULL,
    check_in timestamp default CURRENT_TIMESTAMP,
    --may need to change the default thingy
    check_out timestamp default CURRENT_TIMESTAMP,

    CONSTRAINT PK_visit PRIMARY KEY (visit_id),
    CONSTRAINT FK_user FOREIGN KEY (account_id) references account

);

CREATE TABLE workout_log (
    workout_id SERIAL,
    visit_id integer NOT NULL,
    exercise_id integer NOT NULL,
    workout_date timestamp default CURRENT_DATE,
    sets integer,
    reps integer,
    weight DECIMAL(5, 2),
    timer time,

    CONSTRAINT PK_workout_id PRIMARY KEY (workout_id),
    CONSTRAINT FK_exercise FOREIGN KEY (exercise_id) references exercise,
    CONSTRAINT sets_limit CHECK (weight >= 0),
    CONSTRAINT reps_limit CHECK (weight >= 0),
    CONSTRAINT weight_limit CHECK (weight >= 0)
);

CREATE TABLE exercise (
    exercise_id SERIAL,
    machine boolean DEFAULT false,
    name varchar(50) NOT NULL,
    muscle varchar(50) NOT NULL,
    media_url varchar(400) NOT NULL,

    CONSTRAINT PK_exercise PRIMARY KEY (exercise_id),
)

-- CREATE TABLE class_schedule (
--     class_id SERIAL,
--     class_name varchar(50) NOT NULL,
--     class_instructor varchar(50) NOT NULL,
--     class_description varchar(200),
--     class_time time NOT NULL,
--     class_day varchar(10) NOT NULL,
-- 	user_id integer references users(id),

--     CONSTRAINT PK_class_schedule PRIMARY KEY (class_id)

-- );

COMMIT TRANSACTION;
 --class_schedule table is giving errors in postgresql
