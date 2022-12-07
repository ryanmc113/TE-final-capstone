package com.techelevator.controller;


import com.techelevator.dao.AccountDao;
import com.techelevator.model.Account;
import com.techelevator.model.WorkoutMetrics;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;

@RestController
@PreAuthorize("isAuthenticated()")
@RequestMapping("/account/")
public class AccountController {


    private AccountDao accountDao;

    public AccountController(AccountDao accountDao) {
        this.accountDao = accountDao;
    }


    @PutMapping(path = "profile")
    public void updateProfile(@RequestBody Account account) {
        accountDao.updateAccount(account);
    }


        //if Principal user

    //get account by id

    //get calendar events

    //save calendar event

    // list all accounts

}
