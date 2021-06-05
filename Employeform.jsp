<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Employeform.css">
</head>
<body>
<div class="container">
		<h1 class="label">Register Form</h1>
	   <form class="loginform" action="employeRegister" method="post">
	 
	         <div class="font"><a>ID :</a></div>
			<input  type="text" name="id" placeholder="your id">
			
			<div class="font"><a>First Name :</a></div>
			<input type="text" name="firstname" placeholder="your first name">
	
			
			<div class="font"><a>Last Name :</a></div>
			<input   type="text" name="lastname" placeholder="your last name">
			
			<div class="font"><a>Employment ID :</a></div>
			<input type="text" name="employmentid" placeholder="your employment id">
		
			<div class="font"><a>Start Date :</a></div>
			<input type="text" name="startdate" placeholder="your start date">
	
			
			<div class="font"><a> Designation :</a></div>
			<input  type="text" name="designation" placeholder="your designation">
			
			
			<div class="font"><a>Department :</a></div>
			<input type="text" name="department" placeholder="your department">
		
			<div class="font"><a>End date :</a></div>
			 <input type="text" name="enddate" placeholder="your enddate">
			 
			 <div class="font"><a>Status :</a></div>
			 <input type="text" name="status" placeholder="your status">
			 
			 	 <div class="font"><a>DOB :</a></div>
			 <input type="text" name="dob" placeholder="your dob">
			 
			 
			 <div class="font"><a>Reporting Manager :</a></div>
			 <input type="text" name="reportingmanager" placeholder="your reporting manager">
			 
			 <div class="font"><a>gender :</a></div>
			 <input type="text" name="gender" placeholder="your gender">
			 
			 <div class="font"><a>blood group :</a></div>
			 <input type="text" name="bloodgroup" placeholder="your blood group">
			 
			 <div class="font"><a>Address :</a></div>
			 <input type="text" name="address" placeholder="your address">
			 

			<br>
			<button type="submit">submit</button>
    </form>
		   
    </div>
</body>
</html>
