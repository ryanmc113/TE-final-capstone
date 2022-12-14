--Data for fitness class schedule

INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day
VALUES ('Cardio Kickboxing', 'Sara', 'Add strength and endurance to your workout & hit some shh', '09:00:00', 'Monday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Cardio Kickboxing', 'Sara', 'Add strength and endurance to your workout & hit some shh', '09:00:00', 'Wednesday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Spin to win!', 'Walt', 'Get ready to sweat and spin', '02:00:00', 'Thursday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Spin to win!', 'Walt', 'Get ready to sweat and spin', '10:00:00', 'Tuesday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Spin to win!', 'Walt', 'Get ready to sweat and spin', '10:00:00', 'Saturday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Weighted down?', 'Ryan', 'Get out some stress & lift heavy stuff', '04:00:00', 'Monday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Weighted down?', 'David', 'Get out some stress & lift heavy stuff', '08:00:00', 'Wednesday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Cardio Aerobics', 'Richard', 'Sweatin'' to the oldies flashback style', '10:00:00', 'Friday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Cardio Aerobics', 'Richard', 'Sweatin'' to the oldies flashback style', '10:00:00', 'Sunday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Rock Aerobics', 'Tom M.', 'Dance, scream, or sing - do what makes you de-stress', '06:00:00', 'Tuesday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
Values ('Convert.ToBeFit(you)', 'Tom. A', 'A beginner''s class to get you in the gym', '07:00:00', 'Monday');


--Assign equipment_id to users exercises in their workout_logs


UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%bicep curl%') where name ILIKE '%bicep%';
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%bike%') where name ILIKE '%bike%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%chest press%') where name ILIKE '%chest press%';
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%calf%') where name ILIKE '%calf%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%chest supported%') where name ILIKE '%chest supported%';
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%pit shark%') where name ILIKE '%pit shark%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%GHR%') where name ILIKE '%GHR%';
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%bench press%') where name ILIKE '%bench press%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%elliptical%') where name ILIKE '%elliptical%';
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%ski%') where name ILIKE '%ski%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%shoulder press%') where name ILIKE '%shoulder press%';
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%row%') where name ILIKE '%row%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%hamstring curl%') where name ILIKE '%hamstring curl%';
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%leg extension%') where name ILIKE '%leg extension%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%lat%') where name ILIKE '%lat%';
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%tricep%') where name ILIKE '%tricep%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%back extension%') where name ILIKE '%back extension%';


--Adding classes to exercise table

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (false, 'Cardio Kickboxing', 'Whole Body',
'https://media0.giphy.com/media/JCWosOiSJFR2PzXVPk/giphy.gif?cid=ecf05e477ohh30ajqzf4nurw8m4csl9h8od6bqnxxwkxsdbt&rid=giphy.gif&ct=g');

INSERT INTO exercise(machine, name, muscle, media_url)
VALUES (false, 'Spin to Win!', 'Legs for Days',
'https://media2.giphy.com/media/p3qOJa4kAwlEbsKpAH/giphy.gif?cid=ecf05e47abafj6vjn0q0vcnw7m6yo56kl8jj3yoo563jagz6&rid=giphy.gif&ct=g')

INSERT INTO exercise(machine, name, muscle, media_url)
VALUES (false, 'What is weighing you down', 'Upper Body',
'https://media3.giphy.com/media/PjOi4kgUeH0fQmr8aK/giphy.gif?cid=ecf05e478awg2nrrmch5axevzz5ofcw2aqjgovn0z92fn56g&rid=giphy.gif&ct=g')

INSERT INTO exercise(machine, name, muscle, media_url)
VALUES (false, 'Cardio Aerobics', 'Cardio',
'https://media1.giphy.com/media/F3lCmld8V5Au4/giphy.gif?cid=ecf05e47xo8zbnth8ksos6cdj5wamflkvkshxq88m5lctgsu&rid=giphy.gif&ct=g')

INSERT INTO exercise(machine, name, muscle, media_url)
VALUES (false, 'Rock Aerobics', 'Cardio Fun',
'https://media3.giphy.com/media/ixkq5RIrwKZXoZ2Lzg/giphy.gif?cid=ecf05e47khpcqzte9akn0nbbn9mkaotp4edzzf7hifvljcxe&rid=giphy.gif&ct=g')

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (false, 'Convert.ToBeFit(you)', 'Beginner Friendly Total Body',
'https://media4.giphy.com/media/JErAGpPtUV8ze/giphy.gif?cid=ecf05e47ducd8apjllw3u75pyvdd2hv1pu1jzlqz9ae79wdt&rid=giphy.gif&ct=g')

--Assign an exercise_id to each class in users workout

UPDATE workout_log set exercise_id = ((select exercise_id from exercise where name ILIKE '%kickboxing%') where name ILIKE '%kickboxing%');
UPDATE workout_log set exercise_id = ((select exercise_id from exercise where name ILIKE '%spin%') where name ILIKE '%spin%');
UPDATE workout_log set exercise_id = ((select exercise_id from exercise where name ILIKE '%weigh%') where name ILIKE '%weigh%');
UPDATE workout_log set exercise_id = ((select exercise_id from exercise where name ILIKE '%Cardio%') where name ILIKE '%Cardio%');
UPDATE workout_log set exercise_id = ((select exercise_id from exercise where name ILIKE '%Rock%') where name ILIKE '%Rock%');
UPDATE workout_log set exercise_id = ((select exercise_id from exercise where name ILIKE '%Fit%') where name ILIKE '%Fit%');


INSERT INTO users(username, )

--65 workout logs for a user



INSERT INTO visit_log (user_id, check_in, check_out)
VALUES(1, '2022-09-01 10:00:00', '2022-09-01 12:00:00'),
(1, '2022-09-03 10:00:00', '2022-09-03 11:30:00'),
(1, '2022-09-05 10:00:00', '2022-09-05 11:30:00'),
(1, '2022-09-07 10:00:00', '2022-09-07 12:30:00'),
(1, '2022-09-09 10:00:00', '2022-09-09 11:00:00'),
(1, '2022-09-11 10:00:00', '2022-09-11 12:00:00'),
(1, '2022-09-14 10:00:00', '2022-09-14 11:30:00'),
(1, '2022-09-16 10:00:00', '2022-09-16 11:30:00'),
(1, '2022-09-16 10:00:00', '2022-09-16 11:30:00'),
(1, '2022-09-18 10:00:00', '2022-09-18 11:30:00'),
(1, '2022-09-20 10:00:00', '2022-09-20 11:30:00'),
(1, '2022-09-22 10:00:00', '2022-09-22 11:30:00'),
(1, '2022-09-24 10:00:00', '2022-09-24 11:30:00'),
(1, '2022-09-26 10:00:00', '2022-09-26 11:30:00'),
(1, '2022-09-28 10:00:00', '2022-09-28 11:30:00'),
(1, '2022-09-30 10:00:00', '2022-09-30 11:30:00'),

(1, '2022-10-01 10:00:00', '2022-10-01 11:30:00'),
(1, '2022-10-02 10:00:00', '2022-10-02 12:00:00'),
(1, '2022-10-03 10:00:00', '2022-10-03 11:30:00'),
(1, '2022-10-05 10:00:00', '2022-10-05 11:30:00'),
(1, '2022-10-07 10:00:00', '2022-10-07 12:30:00'),
(1, '2022-10-09 10:00:00', '2022-10-09 11:00:00'),
(1, '2022-10-11 10:00:00', '2022-10-11 12:00:00'),
(1, '2022-10-14 10:00:00', '2022-10-14 11:30:00'),
(1, '2022-10-16 10:00:00', '2022-10-16 12:00:00'),
(1, '2022-10-16 10:00:00', '2022-10-16 11:30:00'),
(1, '2022-10-18 10:00:00', '2022-10-18 11:30:00'),
(1, '2022-10-20 10:00:00', '2022-10-20 12:00:00'),
(1, '2022-10-22 10:00:00', '2022-10-22 11:30:00'),
(1, '2022-10-24 10:00:00', '2022-10-24 11:30:00'),
(1, '2022-10-26 10:00:00', '2022-10-26 12:00:00'),
(1, '2022-10-28 10:00:00', '2022-10-28 11:30:00'),
(1, '2022-10-30 10:00:00', '2022-10-30 12:00:00'),
(1, '2022-10-31 10:00:00', '2022-10-31 11:30:00'),


(1, '2022-11-01 10:00:00', '2022-11-01 11:30:00'),
(1, '2022-11-02 10:00:00', '2022-11-02 12:00:00'),
(1, '2022-11-03 10:00:00', '2022-11-03 11:30:00'),
(1, '2022-11-05 10:00:00', '2022-11-05 11:30:00'),
(1, '2022-11-07 10:00:00', '2022-11-07 12:30:00'),
(1, '2022-11-09 10:00:00', '2022-11-09 11:00:00'),
(1, '2022-11-11 10:00:00', '2022-11-11 12:00:00'),
(1, '2022-11-14 10:00:00', '2022-11-14 11:30:00'),
(1, '2022-11-16 10:00:00', '2022-11-16 12:00:00'),
(1, '2022-11-16 10:00:00', '2022-11-16 11:30:00'),
(1, '2022-11-18 10:00:00', '2022-11-18 11:30:00'),
(1, '2022-11-20 10:00:00', '2022-11-20 12:00:00'),
(1, '2022-11-22 10:00:00', '2022-11-22 11:30:00'),
(1, '2022-11-24 10:00:00', '2022-11-24 11:30:00'),
(1, '2022-11-26 10:00:00', '2022-11-26 12:00:00'),
(1, '2022-11-28 10:00:00', '2022-11-28 11:30:00'),
(1, '2022-11-30 10:00:00', '2022-11-30 12:00:00'),


(1, '2022-12-01 10:00:00', '2022-12-01 11:30:00'),
(1, '2022-12-02 10:00:00', '2022-12-02 12:00:00'),
(1, '2022-12-03 10:00:00', '2022-12-03 11:30:00'),
(1, '2022-12-05 10:00:00', '2022-12-05 11:30:00'),
(1, '2022-12-07 10:00:00', '2022-12-07 12:30:00'),
(1, '2022-12-09 10:00:00', '2022-12-09 11:00:00'),
(1, '2022-12-11 10:00:00', '2022-12-11 12:00:00'),
(1, '2022-12-14 10:00:00', '2022-12-14 11:30:00');



INSERT INTO workout_log(visit_id, name, sets, reps, weight, minutes)
VALUES(11, 'Bicep Curl', 3, 10, 10, 0),
(11, 'Lat pull', 3, 10, 20, 0),
(11, 'tricep', 3, 10, 10, 0),
(11, 'leg press', 3, 10, 100, 0),
(11, 'chest press', 3, 10, 20, 0),
(11, 'calf raises', 3, 10, 100, 0),
(11, 'cable row', 3, 10, 25, 0),
(11, 'shoulder machine', 3, 10, 20, 0),
(11, 'hamstring', 3, 10, 20, 0),

(12, 'Bicep Curl', 3, 10, 10, 0),
(12, 'Lat pull', 3, 10, 20, 0),
(12, 'tricep', 3, 10, 10, 0),
(12, 'leg press', 3, 10, 100, 0),
(12, 'chest press', 3, 10, 20, 0),
(12, 'calf raises', 3, 10, 100, 0),
(12, 'cable row', 3, 10, 25, 0),
(12, 'shoulder machine', 3, 10, 20, 0),
(12, 'hamstring', 3, 10, 20, 0),

(13, 'Bicep Curl', 3, 10, 10, 0),
(13, 'Lat pull', 3, 10, 20, 0),
(13, 'tricep', 3, 10, 10, 0),
(13, 'leg press', 3, 10, 100, 0),
(13, 'chest press', 3, 10, 20, 0),
(13, 'calf raises', 3, 10, 100, 0),
(13, 'cable row', 3, 10, 25, 0),
(13, 'shoulder machine', 3, 10, 20, 0),
(13, 'hamstring', 3, 10, 20, 0),

(14, 'Bicep Curl', 3, 10, 10, 0),
(14, 'Lat pull', 3, 10, 20, 0),
(14, 'tricep', 3, 10, 10, 0),
(14, 'leg press', 3, 10, 100, 0),
(14, 'chest press', 3, 10, 20, 0),
(14, 'calf raises', 3, 10, 100, 0),
(14, 'cable row', 3, 10, 25, 0),
(14, 'shoulder machine', 3, 10, 20, 0),
(14, 'hamstring', 3, 10, 20, 0),

(15, 'Bicep Curl', 3, 10, 10, 0),
(15, 'Lat pull', 3, 10, 20, 0),
(15, 'tricep', 3, 10, 10, 0),
(15, 'leg press', 3, 10, 100, 0),
(15, 'chest press', 3, 10, 20, 0),
(15, 'calf raises', 3, 10, 100, 0),
(15, 'cable row', 3, 10, 25, 0),
(15, 'shoulder machine', 3, 10, 20, 0),
(15, 'hamstring', 3, 10, 20, 0),

(16, 'Bicep Curl', 3, 10, 10, 0),
(16, 'Lat pull', 3, 10, 20, 0),
(16, 'tricep', 3, 10, 10, 0),
(16, 'leg press', 3, 10, 100, 0),
(16, 'chest press', 3, 10, 20, 0),
(16, 'calf raises', 3, 10, 100, 0),
(16, 'cable row', 3, 10, 25, 0),
(16, 'shoulder machine', 3, 10, 20, 0),
(16, 'hamstring', 3, 10, 20, 0),

(17, 'Bicep Curl', 3, 10, 10, 0),
(17, 'Lat pull', 3, 10, 20, 0),
(17, 'tricep', 3, 10, 10, 0),
(17, 'leg press', 3, 10, 100, 0),
(17, 'chest press', 3, 10, 20, 0),
(17, 'calf raises', 3, 10, 100, 0),
(17, 'cable row', 3, 10, 25, 0),
(17, 'shoulder machine', 3, 10, 20, 0),
(17, 'hamstring', 3, 10, 20, 0),

(18, 'Bicep Curl', 3, 10, 10, 0),
(18, 'Lat pull', 3, 10, 20, 0),
(18, 'tricep', 3, 10, 10, 0),
(18, 'leg press', 3, 10, 100, 0),
(18, 'chest press', 3, 10, 20, 0),
(18, 'calf raises', 3, 10, 100, 0),
(18, 'cable row', 3, 10, 25, 0),
(18, 'shoulder machine', 3, 10, 20, 0),
(18, 'hamstring', 3, 10, 20, 0),

(19, 'Bicep Curl', 3, 10, 10, 0),
(19, 'Lat pull', 3, 10, 20, 0),
(19, 'tricep', 3, 10, 10, 0),
(19, 'leg press', 3, 10, 100, 0),
(19, 'chest press', 3, 10, 20, 0),
(19, 'calf raises', 3, 10, 100, 0),
(19, 'cable row', 3, 10, 25, 0),
(19, 'shoulder machine', 3, 10, 20, 0),
(19, 'hamstring', 3, 10, 20, 0),

(20, 'Bicep Curl', 3, 10, 10, 0),
(20, 'Lat pull', 3, 10, 20, 0),
(20, 'tricep', 3, 10, 10, 0),
(20, 'leg press', 3, 10, 100, 0),
(20, 'chest press', 3, 10, 20, 0),
(20, 'calf raises', 3, 10, 100, 0),
(20, 'cable row', 3, 10, 25, 0),
(20, 'shoulder machine', 3, 10, 20, 0),
(20, 'hamstring', 3, 10, 20, 0),

(21, 'Bicep Curl', 3, 10, 10, 0),
(21, 'Lat pull', 3, 10, 20, 0),
(21, 'tricep', 3, 10, 10, 0),
(21, 'leg press', 3, 10, 100, 0),
(21, 'chest press', 3, 10, 20, 0),
(21, 'calf raises', 3, 10, 100, 0),
(21, 'cable row', 3, 10, 25, 0),
(21, 'shoulder machine', 3, 10, 20, 0),
(21, 'hamstring', 3, 10, 20, 0),

(22, 'Bicep Curl', 3, 10, 15, 0),
(22, 'Lat pull', 3, 10, 30, 0),
(22, 'tricep', 3, 10, 15, 0),
(22, 'leg press', 3, 10, 100, 0),
(22, 'chest press', 3, 10, 20, 0),
(22, 'calf raises', 3, 10, 100, 0),
(22, 'cable row', 3, 10, 25, 0),
(22, 'shoulder machine', 3, 10, 20, 0),
(22, 'hamstring', 3, 10, 20, 0),

(23, 'Bicep Curl', 3, 10, 15, 0),
(23, 'Lat pull', 3, 10, 30, 0),
(23, 'tricep', 3, 10, 15, 0),
(23, 'leg press', 3, 10, 100, 0),
(23, 'chest press', 3, 10, 20, 0),
(23, 'calf raises', 3, 10, 100, 0),
(23, 'cable row', 3, 10, 25, 0),
(23, 'shoulder machine', 3, 10, 20, 0),
(23, 'hamstring', 3, 10, 20, 0),

(24, 'Bicep Curl', 3, 10, 15, 0),
(24, 'Lat pull', 3, 10, 30, 0),
(24, 'tricep', 3, 10, 15, 0),
(24, 'leg press', 3, 10, 100, 0),
(24, 'chest press', 3, 10, 20, 0),
(24, 'calf raises', 3, 10, 100, 0),
(24, 'cable row', 3, 10, 25, 0),
(24, 'shoulder machine', 3, 10, 20, 0),
(24, 'hamstring', 3, 10, 20, 0),

(25, 'Bicep Curl', 3, 10, 15, 0),
(25, 'Lat pull', 3, 10, 30, 0),
(25, 'tricep', 3, 10, 15, 0),
(25, 'leg press', 3, 10, 100, 0),
(25, 'chest press', 3, 10, 20, 0),
(25, 'calf raises', 3, 10, 100, 0),
(25, 'cable row', 3, 10, 25, 0),
(25, 'shoulder machine', 3, 10, 20, 0),
(25, 'hamstring', 3, 10, 20, 0),

(26, 'Bicep Curl', 3, 10, 15, 0),
(26, 'Lat pull', 3, 10, 30, 0),
(26, 'tricep', 3, 10, 15, 0),
(26, 'leg press', 3, 10, 100, 0),
(26, 'chest press', 3, 10, 20, 0),
(26, 'calf raises', 3, 10, 100, 0),
(26, 'cable row', 3, 10, 25, 0),
(26, 'shoulder machine', 3, 10, 20, 0),
(26, 'hamstring', 3, 10, 20, 0),

(27, 'Bicep Curl', 3, 10, 15, 0),
(27, 'Lat pull', 3, 10, 30, 0),
(27, 'tricep', 3, 10, 15, 0),
(27, 'leg press', 3, 10, 100, 0),
(27, 'chest press', 3, 10, 20, 0),
(27, 'calf raises', 3, 10, 100, 0),
(27, 'cable row', 3, 10, 25, 0),
(27, 'shoulder machine', 3, 10, 20, 0),
(27, 'hamstring', 3, 10, 20, 0),

(28, 'Bicep Curl', 3, 10, 15, 0),
(28, 'Lat pull', 3, 10, 30, 0),
(28, 'tricep', 3, 10, 15, 0),
(28, 'leg press', 3, 10, 100, 0),
(28, 'chest press', 3, 10, 20, 0),
(28, 'calf raises', 3, 10, 100, 0),
(28, 'cable row', 3, 10, 25, 0),
(28, 'shoulder machine', 3, 10, 20, 0),
(28, 'hamstring', 3, 10, 20, 0),

(29, 'Bicep Curl', 3, 10, 15, 0),
(29, 'Lat pull', 3, 10, 30, 0),
(29, 'tricep', 3, 10, 15, 0),
(29, 'leg press', 3, 10, 100, 0),
(29, 'chest press', 3, 10, 20, 0),
(29, 'calf raises', 3, 10, 100, 0),
(29, 'cable row', 3, 10, 25, 0),
(29, 'shoulder machine', 3, 10, 20, 0),
(29, 'hamstring', 3, 10, 20, 0),

(30, 'Bicep Curl', 3, 10, 15, 0),
(30, 'Lat pull', 3, 10, 30, 0),
(30, 'tricep', 3, 10, 15, 0),
(30, 'leg press', 3, 10, 100, 0),
(30, 'chest press', 3, 10, 20, 0),
(30, 'calf raises', 3, 10, 100, 0),
(30, 'cable row', 3, 10, 25, 0),
(30, 'shoulder machine', 3, 10, 20, 0),
(30, 'hamstring', 3, 10, 20, 0),

(31, 'Bicep Curl', 3, 10, 15, 0),
(31, 'Lat pull', 3, 10, 30, 0),
(31, 'tricep', 3, 10, 15, 0),
(31, 'leg press', 3, 10, 100, 0),
(31, 'chest press', 3, 10, 20, 0),
(31, 'calf raises', 3, 10, 100, 0),
(31, 'cable row', 3, 10, 25, 0),
(31, 'shoulder machine', 3, 10, 20, 0),
(31, 'hamstring', 3, 10, 20, 0),

(32, 'Bicep Curl', 3, 10, 15, 0),
(32, 'Lat pull', 3, 10, 30, 0),
(32, 'tricep', 3, 10, 15, 0),
(32, 'leg press', 3, 10, 100, 0),
(32, 'chest press', 3, 10, 20, 0),
(32, 'calf raises', 3, 10, 100, 0),
(32, 'cable row', 3, 10, 25, 0),
(32, 'shoulder machine', 3, 10, 20, 0),
(32, 'hamstring', 3, 10, 20, 0),

(33, 'leg press', 3, 10, 120, 0),
(33, 'calf raises', 3, 10, 120, 0),
(33, 'hamstring', 3, 10, 40, 0),
(33, 'leg extension', 3, 40, 30, 0),
(33, 'squats', 3, 10, 150, 0),
(33, 'GHR', 3, 10, 50, 0),
(33, 'leg extension', 3, 10, 50, 0),

(34, 'bicep machine', 3, 15, 20, 0),
(34, 'tricep', 3, 15, 20, 0),
(34, 'cable row', 3, 15, 35, 0),
(34, 'bench press', 3, 15, 40, 0),
(34, 'back extension', 3, 15, 30, 0),
(34, 'row machine', 3, 15, 30, 0),
(34, 'ski erg', 0, 0, 0, 20),

(35, 'leg press', 3, 10, 120, 0),
(35, 'calf raises', 3, 10, 120, 0),
(35, 'hamstring', 3, 10, 40, 0),
(35, 'leg extension', 3, 40, 30, 0),
(35, 'squats', 3, 10, 150, 0),
(35, 'GHR', 3, 10, 50, 0),
(35, 'leg extension', 3, 10, 50, 0),
(35, 'elliptical', 0, 0, 0, 30),

(36, 'bicep machine', 3, 15, 20, 0),
(36, 'tricep', 3, 15, 20, 0),
(36, 'cable row', 3, 15, 35, 0),
(36, 'bench press', 3, 15, 40, 0),
(36, 'back extension', 3, 15, 30, 0),
(36, 'row machine', 3, 15, 30, 0),
(36, 'ski erg', 0, 0, 0, 20),

(37, 'leg press', 3, 10, 120, 0),
(37, 'calf raises', 3, 10, 120, 0),
(37, 'hamstring', 3, 10, 40, 0),
(37, 'leg extension', 3, 40, 30, 0),
(37, 'squats', 3, 10, 150, 0),
(37, 'GHR', 3, 10, 50, 0),
(37, 'leg extension', 3, 10, 50, 0),
(37, 'bike', 0, 0, 0, 30),

(38, 'bicep machine', 3, 15, 20, 0),
(38, 'tricep', 3, 15, 20, 0),
(38, 'cable row', 3, 15, 35, 0),
(38, 'bench press', 3, 15, 40, 0),
(38, 'back extension', 3, 15, 30, 0),
(38, 'row machine', 3, 15, 30, 0),
(38, 'elliptical', 0, 0, 0, 20),

(39, 'bicep machine', 3, 15, 20, 0),
(39, 'tricep', 3, 15, 20, 0),
(39, 'cable row', 3, 15, 35, 0),
(39, 'bench press', 3, 15, 40, 0),
(39, 'back extension', 3, 15, 30, 0),
(39, 'row machine', 3, 15, 30, 0),
(39, 'ski erg', 0, 0, 0, 20),

(40, 'leg press', 3, 10, 120, 0),
(40, 'calf raises', 3, 10, 120, 0),
(40, 'hamstring', 3, 10, 40, 0),
(40, 'leg extension', 3, 40, 30, 0),
(40, 'squats', 3, 10, 150, 0),
(40, 'GHR', 3, 10, 50, 0),
(40, 'leg extension', 3, 10, 50, 0),
(40, 'bike', 0, 0, 0, 30),

(41, 'bicep machine', 3, 15, 20, 0),
(41, 'tricep', 3, 15, 20, 0),
(41, 'cable row', 3, 15, 35, 0),
(41, 'bench press', 3, 15, 40, 0),
(41, 'back extension', 3, 15, 30, 0),
(41, 'row machine', 3, 15, 30, 0),
(41, 'elliptical', 0, 0, 0, 20),

(42, 'leg press', 3, 10, 120, 0),
(42, 'calf raises', 3, 10, 120, 0),
(42, 'hamstring', 3, 10, 40, 0),
(42, 'leg extension', 3, 40, 30, 0),
(42, 'squats', 3, 10, 150, 0),
(42, 'GHR', 3, 10, 50, 0),
(42, 'leg extension', 3, 10, 50, 0),
(42, 'bike', 0, 0, 0, 30),

(43, 'bicep machine', 3, 15, 20, 0),
(43, 'tricep', 3, 15, 20, 0),
(43, 'cable row', 3, 15, 35, 0),
(43, 'bench press', 3, 15, 40, 0),
(43, 'back extension', 3, 15, 30, 0),
(43, 'row machine', 3, 15, 30, 0),
(43, 'ski erg', 0, 0, 0, 20),

(44, 'leg press', 3, 10, 120, 0),
(44, 'calf raises', 3, 10, 120, 0),
(44, 'hamstring', 3, 10, 40, 0),
(44, 'leg extension', 3, 40, 30, 0),
(44, 'squats', 3, 10, 150, 0),
(44, 'GHR', 3, 10, 50, 0),
(44, 'leg extension', 3, 10, 50, 0),
(44, 'bike', 0, 0, 0, 30),

(45, 'bicep machine', 3, 15, 20, 0),
(45, 'tricep', 3, 15, 20, 0),
(45, 'cable row', 3, 15, 35, 0),
(45, 'bench press', 3, 15, 40, 0),
(45, 'back extension', 3, 15, 30, 0),
(45, 'row machine', 3, 15, 30, 0),
(45, 'elliptical', 0, 0, 0, 20),

(46, 'leg press', 3, 10, 120, 0),
(46, 'calf raises', 3, 10, 120, 0),
(46, 'hamstring', 3, 10, 40, 0),
(46, 'leg extension', 3, 40, 30, 0),
(46, 'squats', 3, 10, 150, 0),
(46, 'GHR', 3, 10, 50, 0),
(46, 'leg extension', 3, 10, 50, 0),
(46, 'bike', 0, 0, 0, 30),

(47, 'bicep machine', 3, 15, 20, 0),
(47, 'tricep', 3, 15, 20, 0),
(47, 'cable row', 3, 15, 35, 0),
(47, 'bench press', 3, 15, 40, 0),
(47, 'back extension', 3, 15, 30, 0),
(47, 'row machine', 3, 15, 30, 0),
(47, 'ski erg', 0, 0, 0, 20),

(48, 'leg press', 3, 10, 120, 0),
(48, 'calf raises', 3, 10, 120, 0),
(48, 'hamstring', 3, 10, 40, 0),
(48, 'leg extension', 3, 40, 30, 0),
(48, 'squats', 3, 10, 150, 0),
(48, 'GHR', 3, 10, 50, 0),
(48, 'leg extension', 3, 10, 50, 0),
(48, 'bike', 0, 0, 0, 30),

(49, 'bicep machine', 3, 15, 20, 0),
(49, 'tricep', 3, 15, 20, 0),
(49, 'cable row', 3, 15, 35, 0),
(49, 'bench press', 3, 15, 40, 0),
(49, 'back extension', 3, 15, 30, 0),
(49, 'row machine', 3, 15, 30, 0),
(49, 'ski erg', 0, 0, 0, 20),

(50, 'leg press', 3, 10, 150, 0),
(50, 'calf raises', 3, 10, 120, 0),
(50, 'hamstring', 3, 10, 60, 0),
(50, 'leg extension', 3, 60, 30, 0),
(50, 'squats', 3, 10, 150, 0),
(50, 'GHR', 3, 10, 50, 0),
(50, 'leg extension', 3, 10, 50, 0),
(50, 'elliptical', 0, 0, 0, 30),

(51, 'bicep machine', 3, 15, 20, 0),
(51, 'tricep', 3, 15, 20, 0),
(51, 'cable row', 3, 15, 35, 0),
(51, 'bench press', 3, 15, 40, 0),
(51, 'back extension', 3, 15, 30, 0),
(51, 'row machine', 3, 15, 30, 0),
(51, 'ski erg', 0, 0, 0, 20),


(52, 'leg press', 3, 10, 150, 0),
(52, 'calf raises', 3, 10, 120, 0),
(52, 'hamstring', 3, 10, 60, 0),
(52, 'leg extension', 3, 60, 30, 0),
(52, 'squats', 3, 10, 150, 0),
(52, 'GHR', 3, 10, 50, 0),
(52, 'leg extension', 3, 10, 50, 0),
(52, 'bike', 0, 0, 0, 30),

(53, 'bicep machine', 3, 15, 20, 0),
(53, 'tricep', 3, 15, 20, 0),
(53, 'cable row', 3, 15, 35, 0),
(53, 'bench press', 3, 15, 40, 0),
(53, 'back extension', 3, 15, 30, 0),
(53, 'row machine', 3, 15, 30, 0),
(53, 'ski erg', 0, 0, 0, 20),

(54, 'leg press', 3, 10, 150, 0),
(54, 'calf raises', 3, 10, 120, 0),
(54, 'hamstring', 3, 10, 60, 0),
(54, 'leg extension', 3, 60, 30, 0),
(54, 'squats', 3, 10, 150, 0),
(54, 'GHR', 3, 10, 50, 0),
(54, 'leg extension', 3, 10, 50, 0),
(54, 'bike', 0, 0, 0, 30),

(55, 'bicep machine', 3, 15, 20, 0),
(55, 'tricep', 3, 15, 20, 0),
(55, 'cable row', 3, 15, 35, 0),
(55, 'bench press', 3, 15, 40, 0),
(55, 'back extension', 3, 15, 30, 0),
(55, 'row machine', 3, 15, 30, 0),
(55, 'ski erg', 0, 0, 0, 20),


(56, 'leg press', 3, 10, 150, 0),
(56, 'calf raises', 3, 10, 120, 0),
(56, 'hamstring', 3, 10, 60, 0),
(56, 'leg extension', 3, 60, 30, 0),
(56, 'squats', 3, 10, 150, 0),
(56, 'GHR', 3, 10, 50, 0),
(56, 'leg extension', 3, 10, 50, 0),
(56, 'bike', 0, 0, 0, 30),

(57, 'bicep machine', 3, 15, 20, 0),
(57, 'tricep', 3, 15, 20, 0),
(57, 'cable row', 3, 15, 35, 0),
(57, 'bench press', 3, 15, 40, 0),
(57, 'back extension', 3, 15, 30, 0),
(57, 'row machine', 3, 15, 30, 0),
(57, 'ski erg', 0, 0, 0, 20),

(58, 'leg press', 3, 10, 150, 0),
(58, 'calf raises', 3, 10, 120, 0),
(58, 'hamstring', 3, 10, 60, 0),
(58, 'leg extension', 3, 60, 30, 0),
(58, 'squats', 3, 10, 150, 0),
(58, 'GHR', 3, 10, 50, 0),
(58, 'leg extension', 3, 10, 50, 0),
(58, 'bike', 0, 0, 0, 30),

(59, 'bicep machine', 3, 15, 20, 0),
(59, 'tricep', 3, 15, 20, 0),
(59, 'cable row', 3, 15, 35, 0),
(59, 'bench press', 3, 15, 40, 0),
(59, 'back extension', 3, 15, 30, 0),
(59, 'row machine', 3, 15, 30, 0),
(59, 'ski erg', 0, 0, 0, 20),

(60, 'leg press', 3, 10, 150, 0),
(60, 'calf raises', 3, 10, 120, 0),
(60, 'hamstring', 3, 10, 60, 0),
(60, 'leg extension', 3, 60, 30, 0),
(60, 'squats', 3, 10, 150, 0),
(60, 'GHR', 3, 10, 50, 0),
(60, 'leg extension', 3, 10, 50, 0),
(60, 'bike', 0, 0, 0, 30),

(61, 'bicep machine', 3, 15, 20, 0),
(61, 'tricep', 3, 15, 20, 0),
(61, 'cable row', 3, 15, 35, 0),
(61, 'bench press', 3, 15, 40, 0),
(61, 'back extension', 3, 15, 30, 0),
(61, 'row machine', 3, 15, 30, 0),
(61, 'ski erg', 0, 0, 0, 20),


(62, 'leg press', 3, 10, 150, 0),
(62, 'calf raises', 3, 10, 120, 0),
(62, 'hamstring', 3, 10, 60, 0),
(62, 'leg extension', 3, 60, 30, 0),
(62, 'squats', 3, 10, 150, 0),
(62, 'GHR', 3, 10, 50, 0),
(62, 'leg extension', 3, 10, 50, 0),
(62, 'bike', 0, 0, 0, 30),

(63, 'bicep machine', 3, 15, 20, 0),
(63, 'tricep', 3, 15, 20, 0),
(63, 'cable row', 3, 15, 35, 0),
(63, 'bench press', 3, 15, 40, 0),
(63, 'back extension', 3, 15, 30, 0),
(63, 'row machine', 3, 15, 30, 0),
(63, 'ski erg', 0, 0, 0, 20),


(64, 'leg press', 3, 10, 150, 0),
(64, 'calf raises', 3, 10, 120, 0),
(64, 'hamstring', 3, 10, 60, 0),
(64, 'leg extension', 3, 60, 30, 0),
(64, 'squats', 3, 10, 150, 0),
(64, 'GHR', 3, 10, 50, 0),
(64, 'leg extension', 3, 10, 50, 0),
(64, 'bike', 0, 0, 0, 30),

(65, 'bicep machine', 3, 15, 20, 0),
(65, 'tricep', 3, 15, 20, 0),
(65, 'cable row', 3, 15, 35, 0),
(65, 'bench press', 3, 15, 40, 0),
(65, 'back extension', 3, 15, 30, 0),
(65, 'row machine', 3, 15, 30, 0),
(65, 'ski erg', 0, 0, 0, 20);















