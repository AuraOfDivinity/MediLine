<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Doctor</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<link href="DoctorEditProfile.css" type="text/css" rel="stylesheet">
</head>
<body>

	<%@ page import="java.util.List"%>
		<%@ page import="Admin.*"%>
		<%@ page import="Member.*"%>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

		if (session.getAttribute("username") == null) {
			response.sendRedirect("DoctorLogin.jsp");
		} else {
	%><jsp:include page="DoctorMenu.html" />
	<%
		}
	%>

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div id="content">
					<h1>Edit Profile</h1>
					<br />
					<div id="frm">
						<div class="col-lg-6">
							<form action="EditDoctor" method="post">
								<!-- Add item servlet gets called -->
								<p style="font-size: 0.75em;">Fill in the fields with the
									new values and submit!</p>
								<ul>
									<%
										Item i = ItemDao.getPreparedItem();
									%>

									<li>Doctor Username: <input type="text"
										class="form-control" name="username"
										value="<%=session.getAttribute("username")%>" pattern="[a-zA-Z0-9]+" title="Username must only contain 20 alphanumeric characters"></li>
									<br />
									<li>Doctor Speciality: <input type="text" pattern="^[a-zA-Z]{0,20}$" title="Speciality can only contain upto 50 alphanumeric characters and cannot contain special characters!"
										class="form-control" name="speciality"></li>
									<br />
									<li>Doctor Description: <input type="text" pattern="^[a-zA-Z0-9_ .,!@#$&()\\-`.+,]{0,500}$" title="Description must be less than 500 characters"
										class="form-control" name="description"></li>
									<br />
									<li>Doctor Price: <input type="number" name="price"
										class="form-control"></li>
									<br />
									<li>Image url: <input type="text" name="img"
										class="form-control"></li>
									<br />
									<button class="btn btn-default btn-lg" type="submit"
										class="form-control">Edit Doctor</button>
								</ul>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>