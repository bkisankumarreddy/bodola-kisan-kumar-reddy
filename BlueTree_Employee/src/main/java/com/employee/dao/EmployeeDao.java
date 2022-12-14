package com.employee.dao;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.employee.dto.Employee;

@Repository
@SuppressWarnings("all")
public class EmployeeDao {

	@Autowired
	EntityManager entityManager;
	
	public Employee saveEmployee(Employee employee) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(employee);
		entityTransaction.commit();
		
		return employee;
	}
	
	public Employee updateEmployee(Employee employee)
	{
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.merge(employee);
		entityTransaction.commit();
		
		return employee;	
    }
	
	public java.util.List<Employee> findAll(){
		Query query=entityManager.createQuery("select e from Employee e");
		@SuppressWarnings("unchecked")
		java.util.List<Employee> employees=query.getResultList();
		
		return employees;
	}
	public void deletEmployee(Employee employee) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		
		if(employee != null)
			entityManager.remove(employee);
		else
			System.out.println("enter correct Id ");
		entityTransaction.commit();
	}
	public Employee findEmployee(int id) {
		return entityManager.find(Employee.class, id);
	}
	
}