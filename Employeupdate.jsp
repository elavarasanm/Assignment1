<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 <%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/elavarasan","root","elavarasan97@");
statement=connection.createStatement();
String sql ="select * from employe where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Employeform.css">
</head>
<body>
<p>
<div class="container">
<h1 class="label">Update Data</h1>
<form class="loginform" method="post" action="employeRegister">

ID:<br>
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
Firstname:<br>
<input type="text" name="firstname" value="<%=resultSet.getString("firstname") %>">
<br>
Lastname:<br>
<input type="text" name="lastname" value="<%=resultSet.getString("lastname") %>">
<br>
EmploymentId:<br>
<input type="text" name="employmentid" value="<%=resultSet.getString("employmentid") %>">
<br>
StartDate:<br>
<input type="text" name="startdate" value="<%=resultSet.getString("startdate") %>">
<br>
Designation:<br>
<input type="text" name="designtion" value="<%=resultSet.getString("designation") %>">
<br>
Department:<br>
<input type="text" name="department" value="<%=resultSet.getString("department") %>">
<br>
Enddate:<br>
<input type="text" name="enddate" value="<%=resultSet.getString("enddate") %>">
<br>
Status:<br>
<input type="text" name="status" value="<%=resultSet.getString("status") %>">
<br>
Dob:<br>
<input type="text" name="dob" value="<%=resultSet.getString("dob") %>">
<br>
Reportingmanager:<br>
<input type="text" name="reportingmanager" value="<%=resultSet.getString("reportingmanager") %>">
<br>
Gender:<br>
<input type="text" name="gender" value="<%=resultSet.getString("gender") %>">
<br>
Bloodgroup:<br>
<input type="text" name="bloodgroup" value="<%=resultSet.getString("bloodgroup") %>">
<br>
Address:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br>
<button type="submit">submit</button>
</form>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>
