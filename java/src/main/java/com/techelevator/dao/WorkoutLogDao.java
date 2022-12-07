package com.techelevator.dao;

import com.techelevator.model.WorkoutLog;

import java.util.List;

public interface WorkoutLogDao {

    List<WorkoutLog> listAllWorkoutLogsForUser();

    WorkoutLog getWorkoutLogById(int workoutId);









}
