package com.cognizant.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Employee;

@Repository
public interface EmployeeService extends JpaRepository<Employee, String>{

}
