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
VALUES (true,'chest press machine','chest', '');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'calf raises machine', 'calf', 'https://i.pinimg.com/originals/4b/38/05/4b38051e17931a543c31528310e92360.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'GHR- glute/hamstring development', 'glutes, quads, hamstrings',
	   'https://gfycat.com/craftynimbleass');

INSERT INTO exercise (machine, name, muscle, media_url) 
VALUES (true, 'chest supported row', 'chest',
	   'https://media.giphy.com/media/56GiLC8cTedmEB9N73/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url) 
VALUES (true, 'pit shark', 'legs, quads, abs, adductors, calves, glutes, hamstrings, lower back',
		'https://pa1.narvii.com/7605/0833cc159717a496ed0adb89791886ffc338b091r1-480-267_hq.gif');

INSERT INTO exercise (machine, name, muscle, media_url) 
VALUES (false, 'bench press','chest, deltoids, triceps, biceps',
	   'https://media2.giphy.com/media/WmoZimTVtLtGKA9YdV/giphy.gif?cid=ecf05e470vdy60lf90k5qrq4mpeccrmlwsrl1mhnac3dggk5&rid=giphy.gif&ct=g');

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
	   'https://media.giphy.com/media/UIze7SZJbFQ6u4SP6E/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'shoulder press',
        'shoulder, deltoid, triceps, trapezius, pecs',
	   'https://media.giphy.com/media/fHilEnXhUnye6wW4AB/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'row machine',
        'legs, quads, hamstrings, back, abs, arms, shoulders, calves',
	   'https://media.giphy.com/media/26DMTbM0OAxbdPiYo/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'cat crunches',
        'abs, heart, longevity, the cure for life',
	   'https://tenor.com/view/cat-meme-working-out-workout-situp-cat-gif-25374202');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'cable row',
        'back, biceps, lats, rhomboids, trapezius',
	   'https://media.giphy.com/media/egAdrDi7bTqm0akSa3/giphy-downsized-large.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'hamstring curl',
        'legs, glutes, quads, quadriceps, calves',
	   'https://media.giphy.com/media/iJhntkaAsyfdO3WFPB/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'leg extension machine',
        'legs, quads, quadriceps, rectus femoris, vastus medialis',
	   'https://tenor.com/bXPY4.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'lat pull-down',
        'lats, back, biceps, delts, rhomboids, traps',
	   'https://media.giphy.com/media/3o7TKEQAt0iltJEJxu/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'tricep extension cable',
        'arms, chest, back, biceps, triceps, forearm flexors, core, abs, obliques',
	   'https://gfycat.com/spectacularcoolatlanticspadefish');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'back extension',
        'lower back, glutes, hamstring, calves, calf',
	   'https://media.giphy.com/media/VPByqa8IPNAZm26neB/giphy.gif');
--class schedule data

--Add classes to equipment table
	   INSERT INTO exercise (machine, name, muscle, media_url)
       VALUES (false, 'Cardio Kickboxing', 'Whole Body',
       'https://media0.giphy.com/media/JCWosOiSJFR2PzXVPk/giphy.gif?cid=ecf05e477ohh30ajqzf4nurw8m4csl9h8od6bqnxxwkxsdbt&rid=giphy.gif&ct=g');

       INSERT INTO exercise(machine, name, muscle, media_url)
       VALUES (false, 'Spin to Win!', 'Legs for Days',
       'https://media2.giphy.com/media/p3qOJa4kAwlEbsKpAH/giphy.gif?cid=ecf05e47abafj6vjn0q0vcnw7m6yo56kl8jj3yoo563jagz6&rid=giphy.gif&ct=g');

       INSERT INTO exercise(machine, name, muscle, media_url)
       VALUES (false, 'Weighted down?', 'Upper Body',
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



COMMIT TRANSACTION;
