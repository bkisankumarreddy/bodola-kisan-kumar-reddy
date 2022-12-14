package com.employee.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;

@Entity
@Table(name = "employee")

public class Employee {
	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
  
	private int Id;
	@Column(nullable = false)
	private String Name;
	@Column(nullable = false, unique = true)
	private String Email;
	@Column(nullable = false)
	private String dob;
	@Column(nullable = false)
	private int Age;
	@Column(nullable = false)
	private double sal;
	@Column(nullable = false)
	private String state;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public int getAge() {
		return Age;
	}

	public void setAge(int age) {
		Age = age;
	}

	public double getSal() {
		return sal;
	}

	public void setSal(double sal) {
		this.sal = sal;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
