package com.techelevator.dao;

import com.techelevator.model.Employee;

import java.util.List;

public interface EmployeeDao {

    List<Employee> findAll();

    Employee getEmployeeById(int employeeId);

    Employee findByUsername(String username);

    int findIdByUsername(String username);

}
