<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  height: 200px;
  max-width: 1350px;
  position: relative;
  margin: auto;
}


.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

.alignleft {
	float: left;
}
.alignright {
	float: right;
}

</style>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Display PG</title>

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
      <a class="navbar-brand" href="http://localhost:8080/Project/HomeProject.html">PG LOCATOR</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="http://localhost:8080/Project/indexProject.html#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/Project/AboutProject.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">For PG Owners</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8080/Project/ContactUsProject.html">Contact Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="http://localhost:8080/Project/LogInProject.html">Log In</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>
<br></br>
<br></br>
<body style="background-color:black;">

<div class="slideshow-container">

<div class="mySlides fade">
  
  <img src="https://www.w3schools.com/howto/img_nature_wide.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">
  
  <img src="https://www.w3schools.com/howto/img_snow_wide.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">
  
  <img src="https://www.w3schools.com/howto/img_mountains_wide.jpg" style="width:100%">
  
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>
</br></br></br></br></br></br></br></br></br></br></br></br></br></br>

<div id="textbox">
<h1 style="color:white" class="alignleft"> Facilities Provided </h1>
<h1 style="color:white" class="alignright"> Contact Information &emsp;&emsp; </h1>
</br></br>

<p style="color:white" class="alignright">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</p></br></br></br>
<p style="color:white" class="alignright">Email   :    abcdefghijklmn@gnu.ac.in &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</p>
<p style="color:white">&emsp;WIFI</p>
<p style="color:white" class="alignright">Phone No   :    +91 9243225567 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;</p>
<p style="color:white">&emsp;Room Cleaning Service</p>
<p style="color:white">&emsp;Parking</p>
<p style="color:white" class="alignright">Address   :   285, Bhagwandas Chali, Madalpur Gam,</br> Ellis Bridge, Ahmedabad - 380006, </br> Opposite V S Hospital  &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;</p>
<p style="color:white">&emsp;TV</p>
<p style="color:white">&emsp;Lift</p>
<p style="color:white">&emsp;Laundry</p>
<p style="color:white" class="alignright">Owner Name   :    ABCDEFGHIJKLMN &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</p>

<p style="color:white">&emsp;Food (Break Fast, Lunch, Dinner) (VEG ONLY)</p>
</div>
<div style="clear: both;"></div>

</br></br>
<main>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
</main>
  <!-- FOOTER
   
  <footer class="container">
    <p>&copy; 2017–2021 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer>
 -->

    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

      
  </body>
</html>