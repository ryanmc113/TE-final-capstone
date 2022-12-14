BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');


--class schedule data

INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Cardio Kickboxing', 'Sara', 'Do you want to add strength and endurance to your workout & hit some shh?', '09:00:00', 'Monday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Cardio Kickboxing', 'Sara', 'Do you want to add strength and endurance to your workout & hit some shh?', '09:00:00', 'Wednesday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Spin to win!', 'Walt', 'Get ready to sweat and spin. You will feel this tomorrow!', '02:00:00', 'Thursday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Spin to win!', 'Walt', 'Get ready to sweat and spin. You will feel this tomorrow!', '10:00:00', 'Tuesday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Spin to win!', 'Walt', 'Get ready to sweat and spin. You will feel this tomorrow!', '10:00:00', 'Saturday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Weighted down?', 'Ryan', 'Get out some stress & lift heavy stuff. Hang out with the bros at the gym.', '04:00:00', 'Monday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Weighted down?', 'David', 'Get out some stress & lift heavy stuff. Hang out with the bros at the gym.', '08:00:00', 'Wednesday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Cardio Aerobics', 'Richard', 'Sweatin'' to the oldies flashback style. Have fun and dance to some great oldies like you are in 1985.', '10:00:00', 'Friday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Cardio Aerobics', 'Richard', 'Sweatin'' to the oldies flashback style. Have fun and dance to some great oldies like you are in 1985.', '10:00:00', 'Sunday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
VALUES ('Rock Aerobics', 'Tom M.', 'Dance, scream, or sing - do what makes you de-stress.', '06:00:00', 'Tuesday');
INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
Values ('Convert.ToBeFit(you)', 'Tom. A', 'A beginner''s class to get you in the gym.', '07:00:00', 'Monday');

--equipment data

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true,'bicep curl machine','bicep',
		'https://media0.giphy.com/media/l1TWTuEXuBqluUMGLU/giphy.gif?cid=790b7611b18269533b568ddbe0d6801a1ed7c4ab9edf39fa&rid=giphy.gif&ct=g');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true,'chest press machine','chest', 'https://gfycat.com/alarmedreasonableaustralianfreshwatercrocodile');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'calf raises machine', 'calf', 'https://i.pinimg.com/originals/4b/38/05/4b38051e17931a543c31528310e92360.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'GHR- glute/hamstring development', 'glutes, quads, hamstrings',
	   'https://gfycat.com/craftynimbleass');

INSERT INTO exercise (machine, name, muscle, media_url) 
VALUES (true, 'chest supported row', 'chest',
	   'https://tenor.com/bTDNt.gif');

INSERT INTO exercise (machine, name, muscle, media_url) 
VALUES (true, 'pit shark', 'legs, quads, abs, adductors, calves, glutes, hamstrings, lower back',
		'https://pa1.narvii.com/7605/0833cc159717a496ed0adb89791886ffc338b091r1-480-267_hq.gif');

INSERT INTO exercise (machine, name, muscle, media_url) 
VALUES (false, 'bench press','chest, deltoids, triceps, biceps',
	   'https://gfycat.com/waryhelplessimago');

INSERT INTO exercise (machine, name, muscle, media_url) 
VALUES (true, 'elliptical', 
		'glutes, hamstrings, quads, chest, back, biceps, triceps',
	   'https://media.giphy.com/media/EzjCaYFnApVy8/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url) 
VALUES (true, 'ski erg', 
		'quads, glutes, hamstrings, back, deltoids, trapezius, chest, calves',
	   'https://media.giphy.com/media/qpFG3rUao4HVTi6JOt/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url) 
VALUES (true, 'assault bike',
	   'triceps, biceps, delts, glutes, quads, hamstrings, chest',
	   'https://media.giphy.com/media/TWH3IIPuGyxsOpOZin/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (false, 'squats',
        'glutes, quads, hamstrings, adductor, hip flexors, calves',
	   'https://media.giphy.com/media/3o7btMPzJrsdyWVHeo/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'treadmill',
        'legs, thighs, quads, hamstrings, calves, glutes',
	   'https://media.giphy.com/media/YpZh61QjwuXq15FhV7/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (false, 'sit ups',
        'abs, obliques, hip flexors, chest, neck',
	   'https://media.giphy.com/media/lojcMSaiZ3kIntMHPk/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (false, 'vegan exercises',
        'fiber',
	   'https://media.giphy.com/media/4bjIKBOWUnVPICCzJc/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (false, 'hula hoop',
        'quadriceps, hamstrings, glutes, calves',
	   'https://media.giphy.com/media/LpLnw6PKmw2KXzSvDg/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'leg press',
        'legs, quads, hamstrings, glutes, calves',
	   'https://tenor.com/view/leg-press-workout-heavy-weights-tough-focused-gif-13985833');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'shoulder press',
        'shoulder, deltoid, triceps, trapezius, pecs',
	   'https://gfycat.com/browninfiniteammonite');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'row machine',
        'legs, quads, hamstrings, back, abs, arms, shoulders, calves',
	   'https://tenor.com/view/workout-machine-row-focused-heavy-intense-gif-13985887');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'cat crunches',
        'abs, heart, longevity, the cure for life',
	   'https://tenor.com/view/cat-meme-working-out-workout-situp-cat-gif-25374202');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'cable row',
        'back, biceps, lats, rhomboids, trapezius',
	   'https://tenor.com/view/exercising-2chainz-pulling-fitness-seated-row-machine-gif-20042370');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'hamstring curl',
        'legs, glutes, quads, quadriceps, calves',
	   'https://gfycat.com/breakablewickedkissingbug');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'leg extension machine',
        'legs, quads, quadriceps, rectus femoris, vastus medialis',
	   'https://tenor.com/bXPY4.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'lat pull-down',
        'lats, back, biceps, delts, rhomboids, traps',
	   'https://gfycat.com/difficultpepperybasenji');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'tricep extension cable',
        'arms, chest, back, biceps, triceps, forearm flexors, core, abs, obliques',
	   'https://gfycat.com/spectacularcoolatlanticspadefish');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'back extension',
        'lower back, glutes, hamstring, calves, calf',
	   'https://gfycat.com/skeletallegalcuttlefish');

--Add classes to equipment table
	   INSERT INTO exercise (machine, name, muscle, media_url)
       VALUES (false, 'Cardio Kickboxing', 'Whole Body',
       'https://media0.giphy.com/media/JCWosOiSJFR2PzXVPk/giphy.gif?cid=ecf05e477ohh30ajqzf4nurw8m4csl9h8od6bqnxxwkxsdbt&rid=giphy.gif&ct=g');

       INSERT INTO exercise(machine, name, muscle, media_url)
       VALUES (false, 'Spin to Win!', 'Legs for Days',
       'https://media2.giphy.com/media/p3qOJa4kAwlEbsKpAH/giphy.gif?cid=ecf05e47abafj6vjn0q0vcnw7m6yo56kl8jj3yoo563jagz6&rid=giphy.gif&ct=g');

       INSERT INTO exercise(machine, name, muscle, media_url)
       VALUES (false, 'What is weighing you down', 'Upper Body',
       'https://media3.giphy.com/media/PjOi4kgUeH0fQmr8aK/giphy.gif?cid=ecf05e478awg2nrrmch5axevzz5ofcw2aqjgovn0z92fn56g&rid=giphy.gif&ct=g');

       INSERT INTO exercise(machine, name, muscle, media_url)
       VALUES (false, 'Cardio Aerobics', 'Cardio',
       'https://media1.giphy.com/media/F3lCmld8V5Au4/giphy.gif?cid=ecf05e47xo8zbnth8ksos6cdj5wamflkvkshxq88m5lctgsu&rid=giphy.gif&ct=g');

       INSERT INTO exercise(machine, name, muscle, media_url)
       VALUES (false, 'Rock Aerobics', 'Cardio Fun',
       'https://media3.giphy.com/media/ixkq5RIrwKZXoZ2Lzg/giphy.gif?cid=ecf05e47khpcqzte9akn0nbbn9mkaotp4edzzf7hifvljcxe&rid=giphy.gif&ct=g');

       INSERT INTO exercise (machine, name, muscle, media_url)
       VALUES (false, 'Convert.ToBeFit(you)', 'Beginner Friendly Total Body',
       'https://media4.giphy.com/media/JErAGpPtUV8ze/giphy.gif?cid=ecf05e47ducd8apjllw3u75pyvdd2hv1pu1jzlqz9ae79wdt&rid=giphy.gif&ct=g');


INSERT INTO users(username, password_hash, role)
values('smc', 'smc', 'Employee');



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
VALUES(1, 'Bicep Curl', 3, 10, 10, 0),
(1, 'Lat pull', 3, 10, 20, 0),
(1, 'tricep', 3, 10, 10, 0),
(1, 'leg press', 3, 10, 100, 0),
(1, 'chest press', 3, 10, 20, 0),
(1, 'calf raises', 3, 10, 100, 0),
(1, 'cable row', 3, 10, 25, 0),
(1, 'shoulder machine', 3, 10, 20, 0),
(1, 'hamstring', 3, 10, 20, 0),

(2, 'Bicep Curl', 3, 10, 10, 0),
(2, 'Lat pull', 3, 10, 20, 0),
(2, 'tricep', 3, 10, 10, 0),
(2, 'leg press', 3, 10, 100, 0),
(2, 'chest press', 3, 10, 20, 0),
(2, 'calf raises', 3, 10, 100, 0),
(2, 'cable row', 3, 10, 25, 0),
(2, 'shoulder machine', 3, 10, 20, 0),
(2, 'hamstring', 3, 10, 20, 0),

(3, 'Bicep Curl', 3, 10, 10, 0),
(3, 'Lat pull', 3, 10, 20, 0),
(3, 'tricep', 3, 10, 10, 0),
(3, 'leg press', 3, 10, 100, 0),
(3, 'chest press', 3, 10, 20, 0),
(3, 'calf raises', 3, 10, 100, 0),
(3, 'cable row', 3, 10, 25, 0),
(3, 'shoulder machine', 3, 10, 20, 0),
(3, 'hamstring', 3, 10, 20, 0),

(4, 'Bicep Curl', 3, 10, 10, 0),
(4, 'Lat pull', 3, 10, 20, 0),
(4, 'tricep', 3, 10, 10, 0),
(4, 'leg press', 3, 10, 100, 0),
(4, 'chest press', 3, 10, 20, 0),
(4, 'calf raises', 3, 10, 100, 0),
(4, 'cable row', 3, 10, 25, 0),
(4, 'shoulder machine', 3, 10, 20, 0),
(4, 'hamstring', 3, 10, 20, 0),

(5, 'Bicep Curl', 3, 10, 10, 0),
(5, 'Lat pull', 3, 10, 20, 0),
(5, 'tricep', 3, 10, 10, 0),
(5, 'leg press', 3, 10, 100, 0),
(5, 'chest press', 3, 10, 20, 0),
(5, 'calf raises', 3, 10, 100, 0),
(5, 'cable row', 3, 10, 25, 0),
(5, 'shoulder machine', 3, 10, 20, 0),
(5, 'hamstring', 3, 10, 20, 0),

(6, 'Bicep Curl', 3, 10, 10, 0),
(6, 'Lat pull', 3, 10, 20, 0),
(6, 'tricep', 3, 10, 10, 0),
(6, 'leg press', 3, 10, 100, 0),
(6, 'chest press', 3, 10, 20, 0),
(6, 'calf raises', 3, 10, 100, 0),
(6, 'cable row', 3, 10, 25, 0),
(6, 'shoulder machine', 3, 10, 20, 0),
(6, 'hamstring', 3, 10, 20, 0),

(7, 'Bicep Curl', 3, 10, 10, 0),
(7, 'Lat pull', 3, 10, 20, 0),
(7, 'tricep', 3, 10, 10, 0),
(7, 'leg press', 3, 10, 100, 0),
(7, 'chest press', 3, 10, 20, 0),
(7, 'calf raises', 3, 10, 100, 0),
(7, 'cable row', 3, 10, 25, 0),
(7, 'shoulder machine', 3, 10, 20, 0),
(7, 'hamstring', 3, 10, 20, 0),

(8, 'Bicep Curl', 3, 10, 10, 0),
(8, 'Lat pull', 3, 10, 20, 0),
(8, 'tricep', 3, 10, 10, 0),
(8, 'leg press', 3, 10, 100, 0),
(8, 'chest press', 3, 10, 20, 0),
(8, 'calf raises', 3, 10, 100, 0),
(8, 'cable row', 3, 10, 25, 0),
(8, 'shoulder machine', 3, 10, 20, 0),
(8, 'hamstring', 3, 10, 20, 0),

(9, 'Bicep Curl', 3, 10, 10, 0),
(9, 'Lat pull', 3, 10, 20, 0),
(9, 'tricep', 3, 10, 10, 0),
(9, 'leg press', 3, 10, 100, 0),
(9, 'chest press', 3, 10, 20, 0),
(9, 'calf raises', 3, 10, 100, 0),
(9, 'cable row', 3, 10, 25, 0),
(9, 'shoulder machine', 3, 10, 20, 0),
(9, 'hamstring', 3, 10, 20, 0),

(10, 'Bicep Curl', 3, 10, 10, 0),
(10, 'Lat pull', 3, 10, 20, 0),
(10, 'tricep', 3, 10, 10, 0),
(10, 'leg press', 3, 10, 100, 0),
(10, 'chest press', 3, 10, 20, 0),
(10, 'calf raises', 3, 10, 100, 0),
(10, 'cable row', 3, 10, 25, 0),
(10, 'shoulder machine', 3, 10, 20, 0),
(10, 'hamstring', 3, 10, 20, 0),

(11, 'Bicep Curl', 3, 10, 10, 0),
(11, 'Lat pull', 3, 10, 20, 0),
(11, 'tricep', 3, 10, 10, 0),
(11, 'leg press', 3, 10, 100, 0),
(11, 'chest press', 3, 10, 20, 0),
(11, 'calf raises', 3, 10, 100, 0),
(11, 'cable row', 3, 10, 25, 0),
(11, 'shoulder machine', 3, 10, 20, 0),
(11, 'hamstring', 3, 10, 20, 0),

(12, 'Bicep Curl', 3, 10, 15, 0),
(12, 'Lat pull', 3, 10, 30, 0),
(12, 'tricep', 3, 10, 15, 0),
(12, 'leg press', 3, 10, 100, 0),
(12, 'chest press', 3, 10, 20, 0),
(12, 'calf raises', 3, 10, 100, 0),
(12, 'cable row', 3, 10, 25, 0),
(12, 'shoulder machine', 3, 10, 20, 0),
(12, 'hamstring', 3, 10, 20, 0),

(13, 'Bicep Curl', 3, 10, 15, 0),
(13, 'Lat pull', 3, 10, 30, 0),
(13, 'tricep', 3, 10, 15, 0),
(13, 'leg press', 3, 10, 100, 0),
(13, 'chest press', 3, 10, 20, 0),
(13, 'calf raises', 3, 10, 100, 0),
(13, 'cable row', 3, 10, 25, 0),
(13, 'shoulder machine', 3, 10, 20, 0),
(13, 'hamstring', 3, 10, 20, 0),

(14, 'Bicep Curl', 3, 10, 15, 0),
(14, 'Lat pull', 3, 10, 30, 0),
(14, 'tricep', 3, 10, 15, 0),
(14, 'leg press', 3, 10, 100, 0),
(14, 'chest press', 3, 10, 20, 0),
(14, 'calf raises', 3, 10, 100, 0),
(14, 'cable row', 3, 10, 25, 0),
(14, 'shoulder machine', 3, 10, 20, 0),
(14, 'hamstring', 3, 10, 20, 0),

(15, 'Bicep Curl', 3, 10, 15, 0),
(15, 'Lat pull', 3, 10, 30, 0),
(15, 'tricep', 3, 10, 15, 0),
(15, 'leg press', 3, 10, 100, 0),
(15, 'chest press', 3, 10, 20, 0),
(15, 'calf raises', 3, 10, 100, 0),
(15, 'cable row', 3, 10, 25, 0),
(15, 'shoulder machine', 3, 10, 20, 0),
(15, 'hamstring', 3, 10, 20, 0),

(16, 'Bicep Curl', 3, 10, 15, 0),
(16, 'Lat pull', 3, 10, 30, 0),
(16, 'tricep', 3, 10, 15, 0),
(16, 'leg press', 3, 10, 100, 0),
(16, 'chest press', 3, 10, 20, 0),
(16, 'calf raises', 3, 10, 100, 0),
(16, 'cable row', 3, 10, 25, 0),
(16, 'shoulder machine', 3, 10, 20, 0),
(16, 'hamstring', 3, 10, 20, 0),

(17, 'Bicep Curl', 3, 10, 15, 0),
(17, 'Lat pull', 3, 10, 30, 0),
(17, 'tricep', 3, 10, 15, 0),
(17, 'leg press', 3, 10, 100, 0),
(17, 'chest press', 3, 10, 20, 0),
(17, 'calf raises', 3, 10, 100, 0),
(17, 'cable row', 3, 10, 25, 0),
(17, 'shoulder machine', 3, 10, 20, 0),
(17, 'hamstring', 3, 10, 20, 0),

(18, 'Bicep Curl', 3, 10, 15, 0),
(18, 'Lat pull', 3, 10, 30, 0),
(18, 'tricep', 3, 10, 15, 0),
(18, 'leg press', 3, 10, 100, 0),
(18, 'chest press', 3, 10, 20, 0),
(18, 'calf raises', 3, 10, 100, 0),
(18, 'cable row', 3, 10, 25, 0),
(18, 'shoulder machine', 3, 10, 20, 0),
(18, 'hamstring', 3, 10, 20, 0),

(19, 'Bicep Curl', 3, 10, 15, 0),
(19, 'Lat pull', 3, 10, 30, 0),
(19, 'tricep', 3, 10, 15, 0),
(19, 'leg press', 3, 10, 100, 0),
(19, 'chest press', 3, 10, 20, 0),
(19, 'calf raises', 3, 10, 100, 0),
(19, 'cable row', 3, 10, 25, 0),
(19, 'shoulder machine', 3, 10, 20, 0),
(19, 'hamstring', 3, 10, 20, 0),

(20, 'Bicep Curl', 3, 10, 15, 0),
(20, 'Lat pull', 3, 10, 30, 0),
(20, 'tricep', 3, 10, 15, 0),
(20, 'leg press', 3, 10, 100, 0),
(20, 'chest press', 3, 10, 20, 0),
(20, 'calf raises', 3, 10, 100, 0),
(20, 'cable row', 3, 10, 25, 0),
(20, 'shoulder machine', 3, 10, 20, 0),
(20, 'hamstring', 3, 10, 20, 0),

(21, 'Bicep Curl', 3, 10, 15, 0),
(21, 'Lat pull', 3, 10, 30, 0),
(21, 'tricep', 3, 10, 15, 0),
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

(23, 'leg press', 3, 10, 120, 0),
(23, 'calf raises', 3, 10, 120, 0),
(23, 'hamstring', 3, 10, 40, 0),
(23, 'leg extension', 3, 40, 30, 0),
(23, 'squats', 3, 10, 150, 0),
(23, 'GHR', 3, 10, 50, 0),
(23, 'leg extension', 3, 10, 50, 0),

(24, 'bicep machine', 3, 15, 20, 0),
(24, 'tricep', 3, 15, 20, 0),
(24, 'cable row', 3, 15, 35, 0),
(24, 'bench press', 3, 15, 40, 0),
(24, 'back extension', 3, 15, 30, 0),
(24, 'row machine', 3, 15, 30, 0),
(24, 'ski erg', 0, 0, 0, 20),

(25, 'leg press', 3, 10, 120, 0),
(25, 'calf raises', 3, 10, 120, 0),
(25, 'hamstring', 3, 10, 40, 0),
(25, 'leg extension', 3, 40, 30, 0),
(25, 'squats', 3, 10, 150, 0),
(25, 'GHR', 3, 10, 50, 0),
(25, 'leg extension', 3, 10, 50, 0),
(25, 'elliptical', 0, 0, 0, 30),

(26, 'bicep machine', 3, 15, 20, 0),
(26, 'tricep', 3, 15, 20, 0),
(26, 'cable row', 3, 15, 35, 0),
(26, 'bench press', 3, 15, 40, 0),
(26, 'back extension', 3, 15, 30, 0),
(26, 'row machine', 3, 15, 30, 0),
(26, 'ski erg', 0, 0, 0, 20),

(27, 'leg press', 3, 10, 120, 0),
(27, 'calf raises', 3, 10, 120, 0),
(27, 'hamstring', 3, 10, 40, 0),
(27, 'leg extension', 3, 40, 30, 0),
(27, 'squats', 3, 10, 150, 0),
(27, 'GHR', 3, 10, 50, 0),
(27, 'leg extension', 3, 10, 50, 0),
(27, 'bike', 0, 0, 0, 30),

(28, 'bicep machine', 3, 15, 20, 0),
(28, 'tricep', 3, 15, 20, 0),
(28, 'cable row', 3, 15, 35, 0),
(28, 'bench press', 3, 15, 40, 0),
(28, 'back extension', 3, 15, 30, 0),
(28, 'row machine', 3, 15, 30, 0),
(28, 'elliptical', 0, 0, 0, 20),

(29, 'bicep machine', 3, 15, 20, 0),
(29, 'tricep', 3, 15, 20, 0),
(29, 'cable row', 3, 15, 35, 0),
(29, 'bench press', 3, 15, 40, 0),
(29, 'back extension', 3, 15, 30, 0),
(29, 'row machine', 3, 15, 30, 0),
(29, 'ski erg', 0, 0, 0, 20),

(30, 'leg press', 3, 10, 120, 0),
(30, 'calf raises', 3, 10, 120, 0),
(30, 'hamstring', 3, 10, 40, 0),
(30, 'leg extension', 3, 40, 30, 0),
(30, 'squats', 3, 10, 150, 0),
(30, 'GHR', 3, 10, 50, 0),
(30, 'leg extension', 3, 10, 50, 0),
(30, 'bike', 0, 0, 0, 30),

(31, 'bicep machine', 3, 15, 20, 0),
(31, 'tricep', 3, 15, 20, 0),
(31, 'cable row', 3, 15, 35, 0),
(31, 'bench press', 3, 15, 40, 0),
(31, 'back extension', 3, 15, 30, 0),
(31, 'row machine', 3, 15, 30, 0),
(31, 'elliptical', 0, 0, 0, 20),

(32, 'leg press', 3, 10, 120, 0),
(32, 'calf raises', 3, 10, 120, 0),
(32, 'hamstring', 3, 10, 40, 0),
(32, 'leg extension', 3, 40, 30, 0),
(32, 'squats', 3, 10, 150, 0),
(32, 'GHR', 3, 10, 50, 0),
(32, 'leg extension', 3, 10, 50, 0),
(32, 'bike', 0, 0, 0, 30),

(33, 'bicep machine', 3, 15, 20, 0),
(33, 'tricep', 3, 15, 20, 0),
(33, 'cable row', 3, 15, 35, 0),
(33, 'bench press', 3, 15, 40, 0),
(33, 'back extension', 3, 15, 30, 0),
(33, 'row machine', 3, 15, 30, 0),
(33, 'ski erg', 0, 0, 0, 20),

(34, 'leg press', 3, 10, 120, 0),
(34, 'calf raises', 3, 10, 120, 0),
(34, 'hamstring', 3, 10, 40, 0),
(34, 'leg extension', 3, 40, 30, 0),
(34, 'squats', 3, 10, 150, 0),
(34, 'GHR', 3, 10, 50, 0),
(34, 'leg extension', 3, 10, 50, 0),
(34, 'bike', 0, 0, 0, 30),

(35, 'bicep machine', 3, 15, 20, 0),
(35, 'tricep', 3, 15, 20, 0),
(35, 'cable row', 3, 15, 35, 0),
(35, 'bench press', 3, 15, 40, 0),
(35, 'back extension', 3, 15, 30, 0),
(35, 'row machine', 3, 15, 30, 0),
(35, 'elliptical', 0, 0, 0, 20),

(36, 'leg press', 3, 10, 120, 0),
(36, 'calf raises', 3, 10, 120, 0),
(36, 'hamstring', 3, 10, 40, 0),
(36, 'leg extension', 3, 40, 30, 0),
(36, 'squats', 3, 10, 150, 0),
(36, 'GHR', 3, 10, 50, 0),
(36, 'leg extension', 3, 10, 50, 0),
(36, 'bike', 0, 0, 0, 30),

(37, 'bicep machine', 3, 15, 20, 0),
(37, 'tricep', 3, 15, 20, 0),
(37, 'cable row', 3, 15, 35, 0),
(37, 'bench press', 3, 15, 40, 0),
(37, 'back extension', 3, 15, 30, 0),
(37, 'row machine', 3, 15, 30, 0),
(37, 'ski erg', 0, 0, 0, 20),

(38, 'leg press', 3, 10, 120, 0),
(38, 'calf raises', 3, 10, 120, 0),
(38, 'hamstring', 3, 10, 40, 0),
(38, 'leg extension', 3, 40, 30, 0),
(38, 'squats', 3, 10, 150, 0),
(38, 'GHR', 3, 10, 50, 0),
(38, 'leg extension', 3, 10, 50, 0),
(38, 'bike', 0, 0, 0, 30),

(39, 'bicep machine', 3, 15, 20, 0),
(39, 'tricep', 3, 15, 20, 0),
(39, 'cable row', 3, 15, 35, 0),
(39, 'bench press', 3, 15, 40, 0),
(39, 'back extension', 3, 15, 30, 0),
(39, 'row machine', 3, 15, 30, 0),
(39, 'ski erg', 0, 0, 0, 20),

(40, 'leg press', 3, 10, 150, 0),
(40, 'calf raises', 3, 10, 120, 0),
(40, 'hamstring', 3, 10, 60, 0),
(40, 'leg extension', 3, 60, 30, 0),
(40, 'squats', 3, 10, 150, 0),
(40, 'GHR', 3, 10, 50, 0),
(40, 'leg extension', 3, 10, 50, 0),
(40, 'elliptical', 0, 0, 0, 30),

(41, 'bicep machine', 3, 15, 20, 0),
(41, 'tricep', 3, 15, 20, 0),
(41, 'cable row', 3, 15, 35, 0),
(41, 'bench press', 3, 15, 40, 0),
(41, 'back extension', 3, 15, 30, 0),
(41, 'row machine', 3, 15, 30, 0),
(41, 'ski erg', 0, 0, 0, 20),


(42, 'leg press', 3, 10, 150, 0),
(42, 'calf raises', 3, 10, 120, 0),
(42, 'hamstring', 3, 10, 60, 0),
(42, 'leg extension', 3, 60, 30, 0),
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

(44, 'leg press', 3, 10, 150, 0),
(44, 'calf raises', 3, 10, 120, 0),
(44, 'hamstring', 3, 10, 60, 0),
(44, 'leg extension', 3, 60, 30, 0),
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
(45, 'ski erg', 0, 0, 0, 20),


(46, 'leg press', 3, 10, 150, 0),
(46, 'calf raises', 3, 10, 120, 0),
(46, 'hamstring', 3, 10, 60, 0),
(46, 'leg extension', 3, 60, 30, 0),
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

(48, 'leg press', 3, 10, 150, 0),
(48, 'calf raises', 3, 10, 120, 0),
(48, 'hamstring', 3, 10, 60, 0),
(48, 'leg extension', 3, 60, 30, 0),
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
(50, 'bike', 0, 0, 0, 30),

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
(55, 'ski erg', 0, 0, 0, 20);


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
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%cable row%') where name ILIKE '%cable row%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%hamstring curl%') where name ILIKE '%hamstring curl%';
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%leg extension%') where name ILIKE '%leg extension%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%lat%') where name ILIKE '%lat%';
UPDATE workout_log Set exercise_id = (select exercise_id from exercise where name ILIKE '%tricep%') where name ILIKE '%tricep%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%back extension%') where name ILIKE '%back extension%';
UPDATE workout_log set exercise_id = (select exercise_id from exercise where name ILIKE '%supported row%') where name ILIKE '%supported row%';

COMMIT TRANSACTION;
