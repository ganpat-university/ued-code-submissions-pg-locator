<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
</head>
<body>
<%
String Sql="INSERT INTO `ownerrequest`(OwnerName, OwnerMailID, OwnerNumber) VALUES (?,?,?);";
String name=request.getParameter("name");
String email=request.getParameter("email");
int number=Integer.parseInt(request.getParameter("number"));
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "mayansuthar");
PreparedStatement obj=con.prepareStatement(Sql);
RequestDispatcher rd=request.getRequestDispatcher("ForPGowner.jsp");
obj.setString(1, name);
obj.setString(2, email);
obj.setInt(3,number);
int test=obj.executeUpdate();
if(test==1){
	out.print("<h1>Request Sended</h1>");
	rd.include(request,response);
}
 else{
	out.print("<h1>Request not sended</h1>");
	rd.include(request,response);
 }
obj.close();
con.close();
}catch (SQLException e) {
	e.printStackTrace();
}
%>
</body>
</html>