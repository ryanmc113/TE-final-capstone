package com.techelevator.controller;

import com.techelevator.model.WorkoutMetrics;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;


@CrossOrigin
public class WorkoutController {

    //log workout (post to workout table, param will be the workoutlog object)

    //get list of logged workouts (to view metrics of logged workouts and visits returns a workoutmetrics log)
    @GetMapping(path = "workouts")
    public WorkoutMetrics getWorkoutHistory(int accountId) {
        return null;
    }

    //get exercise by id (will bring back exercise object for assistance button)

    // log visit (post to visitlog table)
    //*****may need to remove default current_times


}
