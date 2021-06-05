<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

 <%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
   <html>
   <head>
   <title>Employe Management</title>
  </head>
   <body>
 <%
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
 <br>
<div class="row">
<div class="container">
<h3 class="text-center">List of Users</h3>
 <hr>
    <div class="container text-left">
    <a href="Employeform.jsp" class="btn btn-success">Add New Employee</a>
     </div>
   <br>
          <table border="1">
           <tr>
        
                               <th> ID</th>
                               <th> FirstName</th> 
                               <th> LastName</th>
                               <th> EmploymentID</th>
                               <th>StartDate</th>
                               <th>Designation</th>
                               <th> Department</th>
                               <th>Enddate</th>
                               <th>Status</th>
                               <th>DOB</th>
                               <th>ReportingManager</th>
                               <th>Gender</th>
                               <th> Bloodgroup</th>
                               <th>Address</th>
                            </tr>
                     
                  
 <%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/elavarasan" , "root" ,"elavarasan97@" );
statement=connection.createStatement();
String sql =" select * from employe ;";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("lastname") %></td>
<td><%=resultSet.getString("employmentid") %></td>
<td><%=resultSet.getString("startdate") %></td>
<td><%=resultSet.getString("designation") %></td>
<td><%=resultSet.getString("department") %></td>
<td><%=resultSet.getString("enddate") %></td>
<td><%=resultSet.getString("status") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("reportingmanager") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("bloodgroup") %></td>
<td><%=resultSet.getString("address") %></td>
<td><a href="Employeupdate.jsp?id=<%=resultSet.getString("id")%>"><button type="button" class="update">Edit</button></a> &nbsp;&nbsp;&nbsp;&nbsp;
<a href="Employedelete.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="update">Delete</button></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
 </tbody>
</table>
 </div>
 </div>
 </body>

 </html>
