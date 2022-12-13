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
















