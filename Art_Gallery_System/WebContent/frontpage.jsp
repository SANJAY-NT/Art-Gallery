
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%-- <%@ page import="javax.portlet.PortletPreferences" %> --%>
<%-- <%@ taglib uri="/WEB-INF/tld/liferay-portlet.tld" prefix="portlet" %>
<portlet:defineObjects /> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Online Art Gallery</title>
<link rel="stylesheet" href="css/frontpage.css">
	<script type="text/javascript" href="js/frontpage.js"></script>
 <link rel="shortcut icon" href="favicon.ico">
</head>
<body style="background-color:powderblue;">
<style>
/* General Styles */
body { 
     background: url('data:image/jpeg;base64,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') no-repeat center center fixed;    
     background-size:cover;  
} 
</style>
<h2>Online Art Gallery</h2>
<div class="navbar">
  <a href="frontpage.jsp">Home</a>
  <a href="visitorsignup.jsp">Paintings</a>
  <a href="Exhibition.jsp">Exhibitions</a>
  <div class="dropdown1">
    <button class="dropbtn1">SignUp
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content1">
      <a href="index.jsp">Artist</a>
      <!-- <a href="#">Customer</a>
 -->    </div>
  </div>
  <div class="dropdown1">
    <button class="dropbtn1">Login
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content1">
      <a href="index1.jsp">Admin</a>
      <!-- <a href="index1.jsp">Customer</a> -->
      <a href="index1.jsp">Artist</a>
    </div>
  </div>
</div>
<br>
<br>

<style>
* {box-sizing:border-box}
body {
	font-family: Verdana,sans-serif;
	/* //background-image:url("Images/art_gallery_wall_background_wallpaper.jpg"); */
}
.mySlides {
	display:none;
	/* height: 1vw !important;  */
	}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  max-height: 5000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  height: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>


<!-- <h2>Automatic Slideshow</h2>
<p>Change image every 2 seconds:</p>
 -->
<div class="slideshow-container">

<div class="mySlides fade">
<!--   <div class="numbertext">1 / 3</div>
 -->  <img src="https://www.thechannels.org/wp-content/uploads/2016/09/MTWTsuno3-edit-1.jpg" style="width:100%;height:30vw">
  
</div>

<div class="mySlides fade">
  <!-- <div class="numbertext">2 / 3</div> -->
  <img src="https://1.bp.blogspot.com/-r3YNBP3Cohk/Wa0p9Wjy9YI/AAAAAAAAkeM/OssgRUkyRv4J0duhN72SgM3q9NnZXWInQCLcBGAs/s1600/corey_barksdale_art.jpg" style="width:100% ;height:30vw">
  
</div>

<div class="mySlides fade">
  <!-- <div class="numbertext">3 / 3</div> -->
  <img src="https://creativeyatra.com/wp-content/uploads/2018/07/Archer-Art-Gallery.jpg" style="width:100%;height:30vw">
  
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
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
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
</body>
</html>