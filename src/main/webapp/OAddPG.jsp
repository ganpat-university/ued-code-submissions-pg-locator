<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
  <style>
 
        /* Styling the Body element i.e. Color,
        Font, Alignment */
        body {
            
            font-family: Verdana;
            text-align: center;
        }
 
        /* Styling the Form (Color, Padding, Shadow) */
        form {
            background-color: #fff;
            max-width: 500px;
            margin: 50px auto;
            padding: 30px 20px;
            box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
        }
 
        /* Styling form-control Class */
        .form-control {
            text-align: left;
            margin-bottom: 25px;
        }
 
        /* Styling form-control Label */
        .form-control label {
            display: block;
            margin-bottom: 10px;
        }
 
        /* Styling form-control input,
        select, textarea */
        .form-control input,
        .form-control select,
        .form-control textarea {
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            padding: 10px;
            display: block;
            width: 95%;
        }
 
        /* Styling form-control Radio
        button and Checkbox */
        .form-control input[type="radio"],
        .form-control input[type="checkbox"] {
            display: inline-block;
            width: auto;
        }
 
        /* Styling Button */
        button {
            background-color: #28242c;
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            font-size: 19px;
            display: block;
            width: 100%;
            margin-top: 50px;
            margin-bottom: 20px;
        }
    </style>
  <script>
function myFunction() {
  confirm("Do you want to Log Out");
}
</script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Add PG</title>

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
      <a class="navbar-brand" href="http://localhost:8080/Project/OHome.jsp"><h3>OWNER</h3></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/Project/OViewPG.jsp">View PG</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/Project/OAddPG.jsp">Add PG</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/Project/AdminReqOwner.jsp">Edit PG</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/Project/AdminContact.jsp">Edit Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" onclick="myFunction()" href="http://localhost:8080/Project/HomeProject.html">Log Out</a>
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

    <div class="row featurette">
  <center><h2 class="featurette-heading">&emsp;&emsp;ADD YOUR NEW <span class="text-muted">PG</span></h2></center>
      </div>

  <!-- FOOTER 
  <footer class="container">
    <p>&copy; 2017–2021 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer>--> 
<form id="form" action="OwnerReq.jsp" method="post">

        <!-- Details -->
        <div class="form-control">
            <label for="name" id="label-name">
                PG Name
            </label><input type="text" name="name"   id="name"placeholder="Enter your name" required="required"/>
        </div>
  
        <div class="form-control">
            <label for="email" id="label-email">
                Email
            </label>
 
            <!-- Input Type Email-->
            <input type="email" id="email" name="email" placeholder="Enter your email" required="required"/>
        </div>
  
        <div class="form-control">
            <label for="age" id="label-age">
                Number
            </label>
 
            <!-- Input Type Text -->
            <input type="number" id="age" name="number" placeholder="Enter your Mobile Number"required="required" />
        </div>
        <!-- Multi-line Text Input Control -->
        <button type="submit" value="submit"style="color:white;">
            Submit
        </button>
    </form>
    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</main>
      
  </body>
</html>
