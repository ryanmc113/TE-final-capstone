Select * from visit_log;
select * from workout_log;
select * from exercise;



INSERT INTO visit_log (account_id,check_in) VALUES (2,'2022-03-07 11:11:11') RETURNING visit_id;
INSERT INTO workout_log (visit_id, exercise_id, workout_date, sets, reps, weight, timer) VALUES (2, 1, '2022-01-02 09:30:00', 10, 12, 300, '09:01:05');

select workout_id, visit_id, exercise_id, workout_date, sets, reps, weight, timer from workout_log where visit_id = 2;

select sets, reps, weight, timer from workout_log where workout_id = 1

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