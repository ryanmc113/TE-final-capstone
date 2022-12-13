package com.techelevator.controller;

import com.techelevator.dao.JdbcUserDao;
import com.techelevator.dao.JdbcVisitLogDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.User;
import com.techelevator.model.VisitLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
@CrossOrigin
@RestController



public class UserController {

    @Autowired
    JdbcTemplate jdbcTemplate = new JdbcTemplate();
    @Autowired
    private JdbcUserDao dao = new JdbcUserDao(jdbcTemplate);
    @Autowired
    private JdbcVisitLogDao visitDao = new JdbcVisitLogDao(jdbcTemplate);


//    @PostMapping(path = "/register")

    //adding exercises to database table
    //pulling user's visit history
    //getting all employees

//    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @PutMapping("/admin/update/user")
    public void updateUserToEmployee(@RequestBody User user){

            dao.updateUserToEmployee(user);
        }
        @PutMapping("/admin/update/employee")
                public void updateEmployeeToUser(@RequestBody User user){
            dao.updateEmployeeToUser(user);
        }
    }

//    @PreAuthorize("hasAnyRole('ROLE_ADMIN)")
//    @RequestMapping(path = "/employee/account/{id}/visit/workout/{id}", method = RequestMethod.GET)
//    public List<>









