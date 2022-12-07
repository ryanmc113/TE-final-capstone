package com.techelevator.dao;

import com.techelevator.model.Account;
import com.techelevator.model.User;

public interface AccountDao {

    boolean createAccount(int userId);

    Account findUserByName(String firstName, String lastName);

    Account getAccountByUserId(int userId);


    }


}
