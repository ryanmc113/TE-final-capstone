package com.techelevator.controller;

import com.techelevator.dao.JdbcUserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@PreAuthorize("isAuthenticated()")

public class UserController {
    @Autowired
    JdbcTemplate jdbcTemplate = new JdbcTemplate();
    @Autowired
    private JdbcUserDao dao = new JdbcUserDao(jdbcTemplate);


//    @PostMapping(path = "/register")


}
