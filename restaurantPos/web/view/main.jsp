<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Restaurant</title>
    <meta name="description" content="free Bootstrap 4 Theme by uicookies.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/font-awesome.min.css">
      
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/helpers.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/restaurant.css">
<style>
*{
	font-family: 'Do Hyeon', sans-serif;
}
.navbar{
	padding-top:10px;
	padding-bottom: 0;
}
</style>
</head>
  
<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">

    <div class="probootstrap-loader"></div>
    <!-- END loader -->

    <nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" style="background-color: #a06250" id="pb-navbar">
      <div class="container">
        <a class="navbar-brand d-xl-none d-lg-none d-md-block d-sm-block" href="/">
          <img src="img/logo.png" alt="Instant Logo" class="light">
          <img src="img/logo-dark.png" alt="Instant Logo" class="dark">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-navbar" aria-controls="probootstrap-navbar" aria-expanded="false" aria-label="Toggle navigation">
          <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse justify-content-md-center" id="probootstrap-navbar">
          <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link pb_letter-spacing-2" href="#">Home</a></li>
            <li class="nav-item logo-center d-xl-block d-lg-block d-md-none d-sm-none d-none">
              <a class="nav-link text-uppercase pb_letter-spacing-2" href="index.html">
                <img src="img/logo.png" alt="Instant Logo" class="light">
                <img src="img/logo-dark.png" alt="Instant Logo" class="dark">
              </a>
            </li>
            <li class="nav-item"><a class="nav-link pb_letter-spacing-2" href="#">Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->

<section>
	<c:choose>
		<c:when test="${centerpage==null}">
			<jsp:include page="center.jsp"></jsp:include>
    	</c:when>
		<c:otherwise>
			<jsp:include page="${centerpage}.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>

</section>
    
 
</body>
</html>