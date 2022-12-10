BEGIN TRANSACTION;

DROP TABLE IF EXISTS class_schedule, workout_log, exercise, visit_log, account, users;

CREATE TABLE users (

	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL DEFAULT 'Member',

	CONSTRAINT PK_user PRIMARY KEY (user_id)

);

CREATE TABLE account (
	account_id SERIAL,
	user_id int NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar (50) NOT NULL,
	email varchar(60) NOT NULL UNIQUE,
	goal varchar(50) NOT NULL,
	media_url varchar(500),

	CONSTRAINT PK_account PRIMARY KEY (account_id),
	CONSTRAINT FK_account FOREIGN KEY (user_id) References users

);

CREATE TABLE visit_log (
    visit_id SERIAL,
    user_id int NOT NULL,
    check_in timestamp,
    check_out timestamp,

    CONSTRAINT PK_visit PRIMARY KEY (visit_id),
    CONSTRAINT FK_user FOREIGN KEY (user_id) references users

);

--assist help
CREATE TABLE exercise (
    exercise_id SERIAL,
    machine boolean DEFAULT false,
    name varchar(50) NOT NULL,
    muscle varchar(50) NOT NULL,
    media_url varchar(400) NOT NULL,

    CONSTRAINT PK_exercise PRIMARY KEY (exercise_id)

	);

CREATE TABLE workout_log (
    workout_id SERIAL,
    visit_id int NOT NULL,
    exercise_id int NOT NULL,
    sets int,
    reps int,
    weight DECIMAL(5, 2),
    minutes int,

    CONSTRAINT PK_workout PRIMARY KEY(workout_id),
	CONSTRAINT FK_visit FOREIGN KEY (visit_id) references visit_log,
    CONSTRAINT FK_exercise FOREIGN KEY(exercise_id) references exercise,
    CONSTRAINT sets_limit CHECK (weight >= 0),
    CONSTRAINT reps_limit CHECK (weight >= 0),
    CONSTRAINT weight_limit CHECK (weight >= 0)
);

 CREATE TABLE class_schedule (

     class_id SERIAL,
	 exercise_id int,
     class_name varchar(50) NOT NULL,
     class_instructor varchar(50) NOT NULL,
     class_description varchar(200),
     class_time time NOT NULL,
     class_day varchar(10) NOT NULL,

    CONSTRAINT PK_class_schedule PRIMARY KEY (class_id),
	CONSTRAINT FK_exercise FOREIGN KEY (exercise_id) REFERENCES exercise(exercise_id)

);

COMMIT TRANSACTION;

