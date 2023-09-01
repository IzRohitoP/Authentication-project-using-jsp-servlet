<%@page import="com.entities.User"%>
<%@page import="com.db.Dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	User user=(User)session.getAttribute("user-ob");
	
	if(user==null){
		session.setAttribute("login","Please Login First...");
		response.sendRedirect("login.jsp");	
	}
	
	%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
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

	<%
				User user1=(User)session.getAttribute("user-ob");
				
				%>


	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#" style="max-width: 3%;"> <img
			style="border-radius: 20px"
			src="https://cdn.pixabay.com/photo/2017/03/19/20/19/ball-2157465_1280.png"
			class="img-fluid ">
		</a>


		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp"><%= user1.getName() %>
				</a></li>


			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0 bt-custom"
					type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="container">
		<div class="row mt-3">
			<div class="col-md-6 offset-md-4">

				<div class="card mt-4">

					

					<% if(user1!=null) { %>

					<div class="card-header c-head text-center text-white">
						<i class="fa fa-user-circle fa-2x"></i>
						<h3>User</h3>

					</div>
					<div class="card-body">

						<h2>
							Name :
							<%= user1.getName() %></h2>
						<h3>
							Email :
							<%= user1.getEmail() %></h3>

					</div>

					<% } %>
					<div class="container text-center">
						<a class="btn text-white btn-primary" href="LogoutServlet">Logout</a>

					</div>

				</div>


			</div>

		</div>

	</div>






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