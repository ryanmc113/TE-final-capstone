package com.techelevator.dao;

import com.techelevator.model.User;

import java.util.List;

public interface UserDao {

    List<User> findAll();

    User getUserById(int userId);

   void updateUserToEmployee(User user);
    void updateEmployeeToUser(User user);

    User findByUsername(String username);

    int findIdByUsername(String username);

    int create(String username, String password, String role);


}
