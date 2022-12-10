package com.techelevator.dao;

import com.techelevator.model.Account;
import com.techelevator.model.User;

import java.util.List;

public interface UserDao {

    List<User> findAll();

    User getUserById(int userId);

    public void updateUserToEmployee(User user, int userId);

    User findByUsername(String username);

    int findIdByUsername(String username);

    int create(String username, String password, String role);


}
