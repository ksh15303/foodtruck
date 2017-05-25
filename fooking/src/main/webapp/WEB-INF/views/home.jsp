<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="/resources/">
<meta charset="UTF-8">

<title>Cluster - Creative Portfolio HTML Template</title>

<!-- Main CSS file -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/owl.carousel.css" />
<link rel="stylesheet" href="css/magnific-popup.css" />
<link rel="stylesheet" href="css/font-awesome.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/responsive.css" />


<!-- Favicon -->
<link rel="shortcut icon" href="images/icon/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/icon/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/icon/apple-touch-icon-57-precomposed.png">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>

	<!-- PRELOADER -->
	<div id="st-preloader">
		<div id="pre-status">
			<div class="preload-placeholder"></div>
		</div>
	</div>
	<!-- /PRELOADER -->


	<!-- HEADER -->
	<header id="header">
		<nav class="navbar st-navbar navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#st-navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="index.html"><img src="images/logo222.png"
						style="width: 143px; height: 54.5px; margin-top: -13px" alt=""></a>
				</div>

				<div class="collapse navbar-collapse" id="st-navbar-collapse">
					<ul class="nav navbar-nav navbar-right" id="menu">
						<li><a href="/">Home</a></li>
						<li><a href="/notice/list">Notice</a></li>
						<li><a href="/imageboard/list">ImageBoard</a></li>
						<li><a href="/pds/list">PDS</a></li>
						<li><a href="/qna/list">Q&A</a></li>
						<li><a href="#contact">Contact</a></li>
						<li><a href="blog.html">Blog</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->

		</nav>
	</header>
	<!-- /HEADER -->

	<!-- SLIDER -->
	<section id="slider">
		<div id="home-carousel" class="carousel slide" data-ride="carousel">			
			<div class="carousel-inner">
				<div class="item active" style="background-image: url(images/abc.png)">
					<div class="carousel-caption container">
						<div class="row">
							<div class="col-sm-7">
								<h1>This is </h1>
								<h2>Food zzang Truck zzang</h2>
								<p>Hello baby. Food truck zzang zzang man yo baby . Do you know what I'm saying ? Baammm</p>
							</div>
						</div>
					</div>					
				</div>
				<div class="item" style="background-image: url(images/11.jpg)">
					<div class="carousel-caption container">
						<div class="row">
							<div class="col-sm-7">
								<h1>TEst2 </h1>
								<h2>이거괜찮나?</h2>
								<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor. Aenean sollicitudin, lorem quis bibendum auctor.</p>
							</div>
						</div>
					</div>					
				</div>
				<div class="item" style="background-image: url(images/slider/03.jpg)">
					<div class="carousel-caption container">
						<div class="row">
							<div class="col-sm-7">
								<h1>You are entire </h1>
								<h2>creative world</h2>
								<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor. Aenean sollicitudin, lorem quis bibendum auctor.</p>
							</div>
						</div>
					</div>					
				</div>
				<div class="item" style="background-image: url(images/slider/04.jpg)">
					<div class="carousel-caption container">
						<div class="row">
							<div class="col-sm-7">
								<h1>You are entire </h1>
								<h2>creative world</h2>
								<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor. Aenean sollicitudin, lorem quis bibendum auctor.</p>
							</div>
						</div>
					</div>					
				</div>
				<a class="home-carousel-left" href="#home-carousel" data-slide="prev"><i class="fa fa-angle-left"></i></a>
				<a class="home-carousel-right" href="#home-carousel" data-slide="next"><i class="fa fa-angle-right"></i></a>
			</div>		
		</div> <!--/#home-carousel--> 
    </section>
	<!-- /SLIDER -->

<%@include file="includes/footer.jsp"%>
	
	<script>
		$(document).ready(function(){
			console.log($("#menu"));
			/* $("#menu").on("click",'li a',function(e){
				e.preventDefault();
				
			}); */
			
		});		
	</script>
	
</body>
</html>