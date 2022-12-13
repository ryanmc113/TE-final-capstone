package com.techelevator.dao;

import com.techelevator.model.AvgWeightAndReps;
import com.techelevator.model.Exercise;
import com.techelevator.model.WorkoutLog;

import java.util.List;

public interface WorkoutLogDao {

    boolean logWorkout(WorkoutLog workout);

    List<WorkoutLog> listAllWorkoutLogs();

    WorkoutLog getWorkoutLogById(int workoutId);

    List<WorkoutLog> listAllWorkoutLogsByUserId(int userId);

    List<WorkoutLog> listWorkoutsForAVisit(int visitId);

    List<Exercise> listAllExercises();
    //add List Exercise by name

    String totalTimeAtGym(int userId);

    List<AvgWeightAndReps> averageWeightPerDayForExercise(int userId, int exerciseId);



}
