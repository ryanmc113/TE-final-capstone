package com.techelevator.dao;

import com.techelevator.model.Exercise;
import com.techelevator.model.ClassSchedule;
import com.techelevator.model.WorkoutLog;

import java.util.List;

public interface WorkoutLogDao {

    boolean logWorkout(WorkoutLog workout);

    List<WorkoutLog> listAllWorkoutLogs();

    WorkoutLog getWorkoutLogById(int workoutId);

    List<WorkoutLog> listAllWorkoutLogsByUserId(int userId);

    List<Exercise> listAllExercises();



}
