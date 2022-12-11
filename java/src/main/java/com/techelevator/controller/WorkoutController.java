package com.techelevator.controller;

import com.techelevator.dao.*;
import com.techelevator.model.*;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.security.Principal;
import java.util.List;


@CrossOrigin
@PreAuthorize("isAuthenticated()")
@RequestMapping("/workouts/")
@RestController

public class WorkoutController {


    VisitLogDao visitLogDao;
    WorkoutLogDao workoutLogDao;
    UserDao userDao;
    AccountDao accountDao;
    ClassScheduleDao classScheduleDao;


    public WorkoutController( VisitLogDao visitLogDao, WorkoutLogDao workoutLogDao, UserDao userDao, AccountDao accountDao, ClassScheduleDao classScheduleDao) {
        this.visitLogDao = visitLogDao;
        this.workoutLogDao = workoutLogDao;
        this.userDao = userDao;
        this.accountDao = accountDao;
        this.classScheduleDao = classScheduleDao;
    }

    // log check-in and return visit_id, which is needed to log individual exercises
    @PostMapping(path = "check-in")
    public int logVisitCheckIn(@RequestBody VisitLog visit, Principal principal) {
      //@RequestParam int account_id, @RequestParam String checkInTime
        //Principal contains username then compares userId from that user and from visit
        User member = userDao.findByUsername(principal.getName());
        if (member == null || member.getId() != visit.getUserId()){
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Log in to your account");
        }
        return visitLogDao.logCheckIn(visit);
    }

    @PutMapping(path = "check-out")
    public void logVisitCheckOut(@RequestBody VisitLog visit, Principal principal) {
        //Gets username from principal and finds user then checks if user is null or if that user's id does not match userId from visit
        User member = userDao.findByUsername(principal.getName());
        if (member == null || member.getId() != visit.getUserId()){
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Log in for access!");
        }
        visitLogDao.logCheckOut(visit);
    }


    //log workout (post to workout table, param will be the workoutlog object)//HAS VISIT_ID
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

    @GetMapping(path = "classes")
    public List <ClassSchedule> listAllClasses(){
        return classScheduleDao.listAllClasses();
    }



    //get exercise by id (will bring back exercise object for assistance button)



}
