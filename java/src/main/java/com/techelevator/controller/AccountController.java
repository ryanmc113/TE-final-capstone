package com.techelevator.controller;


import com.techelevator.dao.AccountDao;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("")
public class AccountController {


    private AccountDao accountDao;

    public AccountController(AccountDao accountDao) {
        this.accountDao = accountDao;
    }

    //create an account (same for member/employee)
    @GetMapping(path = "/")

    //get account by id

    //get calendar events

    //save calendar event

    // list all accounts

}
