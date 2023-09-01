<%@page import="com.db.Dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
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

	<div class="container">
		<div class="row mt-3">
			<div class="col-md-4 offset-md-4">

				<div class="card mt-4">

					<div class="card-header c-head text-center text-white">
						<i class="fa fa-user-circle fa-2x"></i>
						<h3>Login</h3>

					</div>
					<%
					String logOutmsg = (String) session.getAttribute("logout-msg");
					if (logOutmsg != null) {
					%>
					

						<div class="container text-center">
							<div class="alert alert-success" role="alert"><%=logOutmsg%>
							</div>
						</div>
						<%
						session.removeAttribute("logout-msg");
						}
						%>
					


					<!-- Error Message -->

					<div class="container">

						<%
						String errmsg = (String) session.getAttribute("error-msg");
						if (errmsg != null) {
						%>
						<div class="container text-center">
							<div class="alert alert-success" role="alert"><%=errmsg%>
							</div>
						</div>
						<%
						session.removeAttribute("error-msg");
						}
						%>


					</div>






					<div class="card-body">
						<form action="LoginServlet" method="post">

							<div class="form-group">
								<label for="InputEmail1">Email address</label> <input
									type="email" name="email" class="form-control" id="InputEmail1"
									placeholder="Enter email"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="InputPassword1">Password</label> <input
									type="password" name="password" class="form-control"
									id="InputPassword1" placeholder="Password">
							</div>
							<div class="text-center">
								<button type="submit"
									class="btn btn-primary btn-block badge-pill">Submit</button>
							</div>
						</form>

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