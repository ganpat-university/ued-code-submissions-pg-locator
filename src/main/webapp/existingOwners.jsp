<%@  taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Existing Owner</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">

    

    <!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="http://localhost:8080/Project/AdminProject1.html">PG LOCATOR ADMIN</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="http://localhost:8080/Project/AdminProject1.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">PG</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/Project/AdminReqOwner.jsp">Owners</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/Project/AdminContact.jsp">Contact</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/Project/HomeProject.html">Log Out</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<main>
<br>
<br>
<br>
<br>
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
<center><h1>Existing Owners</h1></center><br>
<center><h4><a href="http://localhost:8080/Project/AdminReqOwner.jsp">Owners Requests</a></h4></center>
<sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="mayansuthar" var="ds"></sql:setDataSource> 
<sql:query dataSource="${ds}" var="rs">SELECT * FROM `owners`;</sql:query>
<br>
<div class="container">
<table class="table">
<tr>
	<td><b><h4>Id</h4></b></td>
	<td><b><h4>Name</h4></b></td>
	<td><b><h4>Password</h4></b></td>
</tr>

<c:forEach items="${rs.rows}" var="row">
<tr>
	<td><c:out value="${row.OwnerID}"></c:out></td>
	<td><c:out value="${row.UserName}"></c:out></td>
	<td><c:out value="${row.Password}"></c:out></td>
</tr>
</c:forEach>
</table>
</div>
    
  <!-- FOOTER 
  <footer class="container">
    <p>&copy; 2017–2021 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer>--> 
</main>


    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

      
  </body>
</html>
