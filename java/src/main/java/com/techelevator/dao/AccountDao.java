package com.techelevator.dao;

import com.techelevator.model.Account;
import com.techelevator.model.User;

import java.util.List;

public interface AccountDao {

    boolean createAccount(Account account);

    void updateAccount(Account account);

    Account findAccountByName(String firstName, String lastName);

    List<Account> getAllEmployees();

    Account findAccountByUserId(int userId);

    List<Account> listUserAccount();

    Account findAccountByUsername(String username);



    }


