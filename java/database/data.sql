BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



				INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
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
                VALUES ('What is weighing you down', 'Ryan', 'Get out some stress & lift heavy stuff', '04:00:00', 'Monday');
				INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
                VALUES ('What is weighing you down', 'David', 'Get out some stress & lift heavy stuff', '08:00:00', 'Wednesday');
				INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
                VALUES ('Cardio Aerobics', 'Richard', 'Sweatin'' to the oldies flashback style', '10:00:00', 'Friday');
				INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
                VALUES ('Cardio Aerobics', 'Richard', 'Sweatin'' to the oldies flashback style', '10:00:00', 'Sunday');
				INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
                VALUES ('Rock Aerobics', 'Tom M.', 'Dance, scream, or sing - do what makes you de-stress', '06:00:00', 'Tuesday');
				INSERT INTO class_schedule (class_name, class_instructor, class_description, class_time, class_day)
				Values ('Convert.ToBeFit(you)', 'Tom. A', 'A beginner''s class to get you in the gym', '07:00:00', 'Monday');




COMMIT TRANSACTION;
