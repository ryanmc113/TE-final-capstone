package com.techelevator.controller;


import com.techelevator.dao.AccountDao;
import com.techelevator.dao.VisitLogDao;
import com.techelevator.model.Account;
import com.techelevator.model.VisitLog;
import com.techelevator.model.WorkoutLog;
import com.techelevator.model.WorkoutMetrics;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@PreAuthorize("isAuthenticated()")
@RequestMapping("/account/")
public class AccountController {


    private AccountDao accountDao;
    private VisitLogDao visitLogDao;

    public AccountController(AccountDao accountDao, VisitLogDao visitLogDao) {
        this.accountDao = accountDao;
        this.visitLogDao = visitLogDao;
    }


    @PutMapping(path = "profile")
    public void updateProfile(@RequestBody Account account) {
        accountDao.updateAccount(account);
    }


    @GetMapping(path = "{id}")
    public String stop(){
        return null;
    }


    @GetMapping(path = "/{id}/visit-history")
    public List<VisitLog> getVisitsByAccountId(@PathVariable int id){
        return visitLogDao.listAllVisitsByAccountId(id);
    }

    //show workout for a certain date
    @GetMapping(path = "/{id}/visit-history/day")
    public List<VisitLog> getUsersVisitsByDate(@PathVariable int id){
        return visitLogDao.getUsersVisitsByDate(id);
    }


        //if Principal user

    //get account by id

    //get calendar events

    //save calendar event

    // list all accounts

}
