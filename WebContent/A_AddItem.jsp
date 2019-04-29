<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet">
<link href="A_AddItem.css" type="text/css" rel="stylesheet">
</head>
<body>
	
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
	
		if(session.getAttribute("username")==null){
			response.sendRedirect("ALogin.html");
		}
		else{
			%><jsp:include page="ALoggedinmenu.html"/><%
		}
	
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div id="content">
					<h1>Add New Doctor</h1>
					<br/>
					<form action="AddItem" method="post">
					<!-- Add item servlet gets called -->
						<ul>
							<li>Doctor name:  <input type="text" name="name" required="required"></li>
							<br/>
							<li>Doctor Speciality:  <input type="text" name="speciality" required="required"></li>
							<br/>
							<li>Doctor Description:  <input type="text" name="description" required="required"></li>
							<br/>
							<li>Doctor Price:  <input type="text" name="price" required="required"></li>
							<br/>
							<li>Image url:  <input type="text" name="img" required="required"></li>
							<br/>
							<li>Doctor Username:  <input type="text" name="username" required="required"></li>
							<br/>
							<li>Doctor Password:  <input type="text" name="password" required="required"></li>
							<br/>
							<button class="btn btn-default btn-lg" type="submit">Add Item</button>
						</ul>
					</form>
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