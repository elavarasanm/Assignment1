<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  

   
<%


String driver = "com.mysql.jdbc.Driver";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
PreparedStatement stmt = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<%
try{
String id=request.getParameter("id");

out.println(id);
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/elavarasan" , "root" ,"elavarasan97@" );
String sql ="delete form  employe where id ='"+id+"'";
stmt=connection.prepareStatement(sql);
int i=stmt.executeUpdate("DELETE FROM employe WHERE id='"+id+"'");
out.println("Data Deleted Successfully!");
response.sendRedirect("list.jsp");
connection.close();
} 
catch (Exception e) {
e.printStackTrace();
}

%>

 
</form>
</body>
</html>
