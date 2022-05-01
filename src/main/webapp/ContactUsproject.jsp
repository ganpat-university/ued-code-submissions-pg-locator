<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
</head>
<body>
<%
String Sql="INSERT INTO `contant us` VALUES (?,?,?,?);";
String name=request.getParameter("name");
String email=request.getParameter("email");
int number=Integer.parseInt(request.getParameter("number"));
String massage=request.getParameter("message");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "mayansuthar");
PreparedStatement obj=con.prepareStatement(Sql);
RequestDispatcher rd=request.getRequestDispatcher("ContactUsProject.html");
obj.setString(1, name);
obj.setString(2, email);
obj.setInt(3,number);
obj.setString(4,massage);
int test=obj.executeUpdate();
if(test==1){
	out.print("<br><br>Done Bhai");
	rd.include(request,response);
}
else
	out.print("Nahi hu aa");
obj.close();
con.close();
}catch (SQLException e) {
	e.printStackTrace();
}
%>
</body>
</html>