SELECT visit_id from visit_log where check_out is null and account_id = 1;

Select * from visit_log;
select * from workout_log;
select * from exercise;

insert into users (username,password_hash,role) values ('gmoney', 'fqwjqewho3248y23u', 'Boss') returning user_id;

INSERT INTO account (user_id, first_name, last_name, email, goal, media_url) VALUES (1, 'Gabriel', 'May', 'gabriel@gabrielsemail.com', 'be happy', 'media');

Insert into exercise (machine, name, muscle, media_url) values ('false', 'bicep curls', 'bicep', 'mediaaaaa');


INSERT INTO visit_log (account_id,check_in) VALUES (1,'2022-03-07 11:11:11') RETURNING visit_id;
INSERT INTO workout_log (visit_id, exercise_id, sets, reps, weight, minutes) VALUES (2, 1, 10, 12, 300, 25);

select workout_id, visit_id, exercise_id, workout_date, sets, reps, weight, timer from workout_log where visit_id = 2;

select sets, reps, weight, timer from workout_log where workout_id = 1;

select workout_id, visit_id, exercise_id, workout_date, sets, reps, weight, timer from workout_log where visit_id = 2;

select * from visit_log where account_id = 2;

select workout_id, visit_id, exercise_id, workout_date, sets, reps, weight, timer from workout_log where visit_id = 2;

select * from visit_log where account_id = 2;

insert into workout_log VALUES (default, 2, 1, '2022-01-02 09:05:00', 9, 12, 25, '09:01:05');
insert into workout_log VALUES (default, 2, 1, '2022-01-02 09:10:00', 10, 10, 25, '09:01:05');
insert into workout_log VALUES (default, 2, 1, '2022-01-02 09:20:00', 10, 12, 20, '09:01:05');
insert into workout_log VALUES (default, 2, 1, '2022-01-02 09:30:00', 10, 12, 20, '09:01:05');

select * from workout_log;

insert into workout_log VALUES (default, 2, 1, '2022-01-02 09:00:00', 10, 12, 25, '09:01:05');

insert into exercise VALUES (default, 'true', 'leg worker outer thingy','legs','mediaURL');