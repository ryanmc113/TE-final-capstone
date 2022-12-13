package com.techelevator.controller;


import com.techelevator.dao.AccountDao;
import com.techelevator.dao.UserDao;
import com.techelevator.dao.VisitLogDao;
import com.techelevator.model.Account;
import com.techelevator.model.VisitLog;
import com.techelevator.model.WorkoutLog;
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

    private UserDao userDao;
    private AccountDao accountDao;
    private VisitLogDao visitLogDao;

    public AccountController(AccountDao accountDao, VisitLogDao visitLogDao, UserDao userDao) {
        this.accountDao = accountDao;
        this.visitLogDao = visitLogDao;
        this.userDao = userDao;
    }


    @PutMapping(path = "")
    public void updateProfile(@RequestBody Account account, Principal principal) {
        accountDao.updateAccount(account);
    }


    @GetMapping(path = "/x{id}")
    public String stop(){
        return null;
    }

// fix this to take a user id
    @GetMapping(path = "/visit-history/yes")
    public List<VisitLog> getVisitsByUser(Principal principal){
      int id = userDao.findIdByUsername(principal.getName());
        return visitLogDao.listAllVisitsByAccountId(id);
    }

    @GetMapping(path = "/visit-history")
    public List<VisitLog> getAllVisits() {
        return visitLogDao.listAllVisits();
    }

    //show workout for a certain date
    @GetMapping(path = "/visit-history")
    public List<VisitLog> getUsersVisitsByDate(Principal principal){
        int id = userDao.findIdByUsername(principal.getName());
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
