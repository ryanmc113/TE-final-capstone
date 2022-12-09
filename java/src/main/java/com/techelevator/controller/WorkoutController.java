package com.techelevator.controller;

import com.techelevator.dao.VisitLogDao;
import com.techelevator.dao.WorkoutLogDao;
import com.techelevator.model.VisitLog;
import com.techelevator.model.WorkoutLog;
import com.techelevator.model.WorkoutMetrics;
import org.springframework.web.bind.annotation.*;


@CrossOrigin
@RequestMapping("/workouts/")
public class WorkoutController {


    VisitLogDao visitLogDao;
    WorkoutLogDao workoutLogDao;

    public WorkoutController( VisitLogDao visitLogDao, WorkoutLogDao workoutLogDao) {
        this.visitLogDao = visitLogDao;
        this.workoutLogDao = workoutLogDao;
    }

    // log check-in and return visit_id, which is needed to log individual exercises
    @PostMapping(path = "check-in")
    public int logVisitCheckIn(@RequestParam VisitLog visit) {
      //@RequestParam int account_id, @RequestParam String checkInTime
        return visitLogDao.logCheckIn(visit);
    }

    @PutMapping(path = "check-out")
    public void logVisitCheckOut(@RequestParam VisitLog visit) {
        visitLogDao.logCheckOut(visit);
    }


    //log workout (post to workout table, param will be the workoutlog object)
    @PostMapping(path = "log-workout")
    public void logWorkout(@RequestParam WorkoutLog workout) {
        workoutLogDao.logWorkout(workout);
    }


    //get list of logged workouts (to view metrics of logged workouts and visits returns a workoutmetrics log)
    @GetMapping(path = "workouts")
    public WorkoutMetrics getWorkoutHistory(int accountId) {
        return null;
    }



    //get exercise by id (will bring back exercise object for assistance button)



}
