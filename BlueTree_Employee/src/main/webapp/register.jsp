<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blue_Tree Emp_DataBase</title>
<style>
        
        form{
            border:2px solid black ;
            padding-left: 60px;
            padding-right: 60px;
            padding-top: 60px;
            padding-bottom: 60px;
            border-radius:20px;
            width: 20%;
            background-color: lightblack;
            box-shadow: 10px 10px 20px rgba(98, 98,98, 0.24),
            -10px -10px 20px rgba(111, 110,110, 0.322);
            border-top:10px solid #0093E9;
        }
        input{
            float: right;
            background-color: rgb(225, 225, 225);
            border-radius: 0.25em;
        }
        body{
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: 'Roboto' , sans-serif;
        padding-top: 100px;
        padding-bottom: 100px;
        }
       button {
		  padding: 0.75em;
		  border: none;
		  outline: none;
		  background-color: rgb(68, 18, 232);
		  color: white;
		  border-radius: 0.25em;
		}
         
    </style>
</head>
<body>
	<form:form modelAttribute="employee" action="employee" method="post">
	<center>
          <h1>BlueTree Registration Form</h1>
          <p>(Kindly fill all the fields to register)</p>
    </center>
		<form:label path="name">Name :-<span class="req">*</span></form:label>
		<form:input path="name" type="text" placeholder="Enter username"/>
		<br>
		<br>
		<form:label path="email">Email :-<span class="req">*</span></form:label>
		<form:input path="email" type="text" placeholder="Enter your email_Id"/>
		<br>
		<br>
		<form:label path="dob">Date of Birth :-<span class="req">*</span></form:label>
		<form:input path="dob" type="text" placeholder="YYYY-MM-DD" />
		<br>
		<br>
		<form:label path="sal">sal :-<span class="req">*</span></form:label>
		<form:input path="sal" type="text" placeholder="Enter salary" />
		<br>
		<br>
		<form:label path="state">status :-<span class="req">*</span></form:label>
		<form:input path="state" type="text" placeholder="Enter  Active(or)Inactive "/>
		<br>
		<br>
		<center><form:button>REGISTER</form:button></center>
	</form:form>

</body>
</html>
