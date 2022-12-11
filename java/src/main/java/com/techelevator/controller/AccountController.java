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

import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin
@PreAuthorize("isAuthenticated()")
@RequestMapping("/account")
public class AccountController {


    private AccountDao accountDao;
    private VisitLogDao visitLogDao;

    public AccountController(AccountDao accountDao, VisitLogDao visitLogDao) {
        this.accountDao = accountDao;
        this.visitLogDao = visitLogDao;
    }


    @PutMapping(path = "/profile")
    public void updateProfile(@RequestBody Account account) {
        accountDao.updateAccount(account);
    }


    @GetMapping(path = "/x{id}")
    public String stop(){
        return null;
    }


    @GetMapping(path = "/{id}/visit-history")
    public List<VisitLog> getVisitsByAccountId(@PathVariable int id){
        return visitLogDao.listAllVisitsByAccountId(id);
    }

    //show workout for a certain date
    @GetMapping(path = "/visit-history/{id}")
    public List<VisitLog> getUsersVisitsByDate(@PathVariable int id){
        return visitLogDao.getUsersVisitsByDate(id);
    }



    //get account by id
@GetMapping(path = "")
public Account getInfo(Principal principal){
    return accountDao.findAccountByUsername(principal.getName());

}
    //get calendar events

    //save calendar event

    // list all accounts


    @GetMapping(path = "/employee/users")
    public List<Account> getUsers(){
        return accountDao.listUserAccount();
    }



}
