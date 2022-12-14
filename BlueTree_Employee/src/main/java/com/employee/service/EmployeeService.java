package com.employee.service;

import java.time.LocalDate;
import java.time.Period;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.dao.EmployeeDao;
import com.employee.dto.Employee;

@Service
public class EmployeeService {
	@Autowired
	EmployeeDao employeeDao;
	
	public Employee saveEmployee(Employee employee) {
		LocalDate dob = LocalDate.parse(employee.getDob());
		employee.setAge(Period.between(dob, LocalDate.now()).getYears());
		return employeeDao.saveEmployee(employee);
	}

	public Employee updateEmployee(Employee employee) {
		LocalDate dob = LocalDate.parse(employee.getDob());
		employee.setAge(Period.between(dob, LocalDate.now()).getYears());
		return employeeDao.updateEmployee(employee);
	}

	public Employee findEmployee(int id) {
		return employeeDao.findEmployee(id);
	}

	public void deleteEmployee(Employee employee) {
		employeeDao.deletEmployee(employee);
	}

	public List<Employee> findAllEmployees() {
		return employeeDao.findAll();
	}

}
