package com.techelevator.dao;

import com.techelevator.model.Employee;

import java.util.List;

public class JdbcEmployeeDao implements EmployeeDao{


    @Override
    public List<Employee> findAll() {
        return null;
    }

    @Override
    public Employee getEmployeeById(int employeeId) {
        return null;
    }

    @Override
    public Employee findByUsername(String username) {
        return null;
    }

    @Override
    public int findIdByUsername(String username) {
        return 0;
    }
}
