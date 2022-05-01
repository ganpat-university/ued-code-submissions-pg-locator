<%@page import="java.util.Random"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@  taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!
		String passfun(int length)
		{
			String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		      String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
		      String specialCharacters = "!@#$";
		      String numbers = "1234567890";
		      String combinedChars = capitalCaseLetters + lowerCaseLetters + specialCharacters + numbers;
		      Random random = new Random();
		      char[] password = new char[length];

		      password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
		      password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
		      password[2] = specialCharacters.charAt(random.nextInt(specialCharacters.length()));
		      password[3] = numbers.charAt(random.nextInt(numbers.length()));
		   
		      for(int i = 4; i< length ; i++) {
		         password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
		      }
		      return String.valueOf(password);
		 
		}
		%>
		<c:set var="pass" value="<%=passfun(8)%>"></c:set>
<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="mayansuthar" />
	<c:set var="oid" value="${param.id2}"></c:set>
	<c:set var='oname' value="${param.id1}"></c:set>
	<sql:update dataSource="${con}"  var="ps">
		INSERT INTO `project`.`owners` VALUES (?,?,?);
		<sql:param value="${oid}"></sql:param>
		<sql:param value="${oname}"></sql:param>
		<sql:param value="${pass}"></sql:param>
	</sql:update>
	<sql:update dataSource="${con}"  var="ps">
		update project.ownerrequest set RequestStatus="Yes" where OwnerId=?;
		<sql:param value="${oid}"></sql:param>
	</sql:update>
	<c:if test="${ps==1}">
		<c:redirect url="AdminReqOwner.jsp"></c:redirect>
	</c:if>


</body>
</html>