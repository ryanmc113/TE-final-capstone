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
VALUES (true, 'chest supported row', 'chest', 'https://tenor.com/bTDNt.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'pit shark', 'legs, quads, abs, adductors, calves, glutes, hamstrings, lower back',
		'https://pa1.narvii.com/7605/0833cc159717a496ed0adb89791886ffc338b091r1-480-267_hq.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'GHR- glute/hamstring development', 'glutes, quads, hamstrings',
	   'https://gfycat.com/craftynimbleass');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (false, 'bench press','chest, deltoids, triceps, biceps', 'https://gfycat.com/waryhelplessimago');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'elliptical', 'glutes, hamstrings, quads, chest, back, biceps, triceps',
	   'https://media.giphy.com/media/EzjCaYFnApVy8/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'ski erg', 'quads, glutes, hamstrings, back, deltoids, trapezius, chest, calves',
	   'https://media.giphy.com/media/qpFG3rUao4HVTi6JOt/giphy.gif');

INSERT INTO exercise (machine, name, muscle, media_url)
VALUES (true, 'assault bike', 'triceps, biceps, delts, glutes, quads, hamstrings, chest',
	   'https://media.giphy.com/media/TWH3IIPuGyxsOpOZin/giphy.gif');



--INSERT INTO exercise (machine, name, muscle, media_url)
--	VALUES (true,'bicep curl machine','bicep',
--'https://media0.giphy.com/media/l1TWTuEXuBqluUMGLU/giphy.gif?cid=790b7611b18269533b568ddbe0d6801a1ed7c4ab9edf39fa&rid=giphy.gif&ct=g');







COMMIT TRANSACTION;
