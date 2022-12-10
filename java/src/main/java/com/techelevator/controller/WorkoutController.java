package com.techelevator.controller;

import com.techelevator.dao.AccountDao;
import com.techelevator.dao.UserDao;
import com.techelevator.dao.VisitLogDao;
import com.techelevator.dao.WorkoutLogDao;
import com.techelevator.model.*;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.security.Principal;


@CrossOrigin
@PreAuthorize("isAuthenticated()")
@RequestMapping("/workouts/")
@RestController

public class WorkoutController {


    VisitLogDao visitLogDao;
    WorkoutLogDao workoutLogDao;
    UserDao userDao;
    AccountDao accountDao;


    public WorkoutController( VisitLogDao visitLogDao, WorkoutLogDao workoutLogDao, UserDao userDao, AccountDao accountDao) {
        this.visitLogDao = visitLogDao;
        this.workoutLogDao = workoutLogDao;
        this.userDao = userDao;
        this.accountDao = accountDao;
    }

    // log check-in and return visit_id, which is needed to log individual exercises
    @PostMapping(path = "check-in")
    public int logVisitCheckIn(@RequestBody VisitLog visit, Principal principal) {
      //@RequestParam int account_id, @RequestParam String checkInTime
        User member = userDao.findByUsername(principal.getName());
        if (member == null){
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Log in to your account");
        }
        return visitLogDao.logCheckIn(visit);
    }

    @PutMapping(path = "check-out")
    public void logVisitCheckOut(@RequestBody VisitLog visit, Principal principal) {
        User memberAccount = userDao.findByUsername(principal.getName());
        if (memberAccount == null || memberAccount.getId() != visit.getUserId()){
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Log in for access!");
        }
        visitLogDao.logCheckOut(visit);
    }


    //log workout (post to workout table, param will be the workoutlog object)
    @PostMapping(path = "log-workout")
    public void logWorkout(@RequestBody WorkoutLog workout, Principal principal) {
        User memberAccount = userDao.findByUsername(principal.getName());
        if(memberAccount == null){
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Log in to record workout!");
        }
        workoutLogDao.logWorkout(workout);
    }


    //get list of logged workouts (to view metrics of logged workouts and visits returns a workoutmetrics log)
    @GetMapping(path = "workouts")
    public WorkoutMetrics getWorkoutHistory(int accountId) {
        return null;
    }



    //get exercise by id (will bring back exercise object for assistance button)



}
