package com.techelevator.dao;

import com.techelevator.model.Account;
import com.techelevator.model.User;

public interface AccountDao {

    boolean createAccount(Account account);

    void updateAccount(Account account);

    Account findAccountByName(String firstName, String lastName);

    Account findAccountByUserId(int userId);


    }


