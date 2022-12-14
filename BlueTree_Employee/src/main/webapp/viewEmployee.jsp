<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.employee.EmployeeConfigration"%>
<%@page
	import="org.springframework.context.annotation.AnnotationConfigApplicationContext"%>
<%@page import="com.employee.dto.Employee"%>
<%@page import="java.util.List"%>

<%@page import="com.employee.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
		<meta charset="UTF-8">
		<title>Blue_Tree Emp_DataBase</title>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
				<style>
				.bg-mynav {
					background-color: orange;
				}
				
			      
			  button {
					  padding: 0.75em;
					  border: none;
					  outline: none;
					  background-color: rgb(68, 18, 232);
					  color: white;
					  border-radius: 0.25em;
					}
					
				td {
					line-height: 3rem;
				}
				table-responsive{
				border:10px solid black ;
				box-shadow: 10px 10px 20px rgba(98, 98,98, 0.24),
				            -10px -10px 20px rgba(111, 110,110, 0.322);
				 border-top:10px solid #0093E9;
				}
				
				.table-responsive {
					background-color: lightred;
				}
				
				.tableheadingrow {
					background-color: lightblue;
				}
				
				.rowdetails {
					
				}
				</style>
		<!-- Bootstrap CSS -->
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
			crossorigin="anonymous">
		
		<title>CRUD FROM API</title>
		</head>
<body>
	<%
		ApplicationContext context = new AnnotationConfigApplicationContext(EmployeeConfigration.class);
		EmployeeDao dao = context.getBean(EmployeeDao.class);
		List<Employee> employees = dao.findAll();
		((AnnotationConfigApplicationContext) context).close();
	%>

	<nav class="navbar navbar-dark bg-mynav">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">CRUD Operations</a>
		</div>
	</nav>



	<div class="container">
		<div class="d-flex bd-highlight mb-3">
			<div class="me-auto p-2 bd-highlight">Employee Details</div>
			<div class="p-2 bd-highlight">
				
				<a href="load">
					<button type="button" class="load" onclick="showUserCreateBox()">
					Add Employee
					</button>
				</a>

			</div>
		</div>

		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr class="tableheadingrow">
						<th scope="col">ID</th>
						<th scope="col">Name</th>
						<th scope="col">Email</th>
						<th scope="col">Date Of Birth</th>
						<th scope="col">Age</th>
						<th scope="col">Salary</th>
						<th scope="col">Status</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>

				<%
					for (Employee emp : employees) {
				%>
				<tr class="rowdetails">
					<td><%=emp.getId()%></td>
					<td><%=emp.getName()%></td>
					<td><%=emp.getEmail()%></td>
					<td><%=emp.getDob()%></td>
					<td><%=emp.getAge()%></td>
					<td><%=emp.getSal()%></td>
					<td><%=emp.getState()%></td>
					<td><a href="edit?id=<%=emp.getId()%>">Edit</a></td>
					<td><a href="delete?id=<%=emp.getId()%>">Delete</a></td>
				</tr>
				<%
					}
				%>
			</table>
		</div>
	</div>
</body>
</html>