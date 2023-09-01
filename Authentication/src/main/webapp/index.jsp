<%@page import="com.db.Dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authentication Project</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<!-- Navbar -->

	<%@include file="navbar.jsp"%>




	<main role="main">

		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">Welcome</h1>
				<p>Driven by innovation, our company is dedicated to delivering
					cutting-edge solutions that transform industries and exceed client
					expectations."With a commitment to excellence, our company
					fosters a collaborative environment, empowering diverse talents to
					create impactful products and services for a global audience".</p>
				<p>
					<a class="btn btn-primary btn-lg" href="#" role="button">Learn
						more &raquo;</a>
				</p>
			</div>
		</div>

		<div class="container">
			<!-- Example row of columns -->
			<div class="row">
				<div class="col-md-4">
					<h2>Software Development</h2>
					<p>Software development is the process of designing, creating,
						testing, and maintaining computer programs and applications. It
						involves programming languages, algorithms, and collaboration to
						meet user needs and solve problems efficiently.</p>
					<p>
						<a class="btn btn-secondary" href="#" role="button">View
							details &raquo;</a>
					</p>
				</div>
				<div class="col-md-4">
					<h2>Software Testing</h2>
					<p>Software testing is a vital phase in development, verifying
						that software meets requirements and functions as intended. It
						involves running tests, detecting defects, and ensuring
						reliability, performance, and user satisfaction before deployment.
					</p>
					<p>
						<a class="btn btn-secondary" href="#" role="button">View
							details &raquo;</a>
					</p>
				</div>
				<div class="col-md-4">
					<h2>Cyber Security</h2>
					<p>Cybersecurity safeguards digital systems and data from
						unauthorized access, attacks, and breaches. It encompasses
						strategies, technologies, and practices like encryption,
						firewalls, and awareness training to ensure confidentiality,
						integrity, and availability of information.</p>
					<p>
						<a class="btn btn-secondary" href="#" role="button">View
							details &raquo;</a>
					</p>
				</div>
			</div>

			<hr>

		</div>
		<!-- /container -->

	</main>

	<footer class="container">
		<p>&copy; Company 2017-2018</p>
	</footer>






	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>