<%@page import="java.sql.SQLException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogInVarification</title>
</head>
<body>
<% 
	String up="None";
	String Sql="SELECT * FROM project.admin;";
	String Sql1="SELECT * FROM project.owners;";
	String user=request.getParameter("username");
	String password=request.getParameter("password");
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mayan","root", "mayansuthar");
		Statement statement=con.createStatement();
		ResultSet result=statement.executeQuery(Sql);
		RequestDispatcher rd=request.getRequestDispatcher("LogInProject.html");
		session.setAttribute("username",user);  
		while(result.next()){
        	if(user.equals(result.getString(1))){
        		if (password.equals(result.getString(2))){
        		up="Admin";
        		String redirectURL = "http://localhost:8080/Project/AdminProject1.html";
                response.sendRedirect(redirectURL);
        		}
        	}
        }
		ResultSet result1=statement.executeQuery(Sql1);
		while(result1.next()){
        	if(user.equals(result1.getString(2))){
        		if (password.equals(result1.getString(3))){
        		up="Owner";
%>
<jsp:forward page="OHome.jsp"></jsp:forward>
 <%//       		String redirectURL = "http://localhost:8080/Project/AdminReqOwner.jsp";
     //           response.sendRedirect(redirectURL);
        		}
        	}
        }
        if(up=="None"){
        	String redirectURL = "http://localhost:8080/Project/ErrorLogInProject.html";
            response.sendRedirect(redirectURL);
        }
        
	} catch (SQLException e) {
		e.printStackTrace();
	}
%>
</body>
</html>