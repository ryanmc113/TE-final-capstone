package com.techelevator.dao;

import com.techelevator.model.Account;
import com.techelevator.model.User;

public interface AccountDao {

    Account findUserByName(String firstName, String lastName);


}
