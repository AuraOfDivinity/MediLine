<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lobby</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oswald"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
<link href="MemberWelcome.css" type="text/css" rel="stylesheet">
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

		if (session.getAttribute("username") == null) {
			response.sendRedirect("Member-Login.jsp");
		} else {
	%><jsp:include page="Menu_loggedin.html" />
	<%
		}
	%>

	<div class="header">
		<p>Available Doctors</p>
	</div>

	<%@ page import="java.util.List"%>
	<%@ page import="Admin.*"%>
	<%@ page import="Member.*"%>

	<%
		List<Item> list = ItemDao.getAllItems();
	//For each loop to loop though the items in list arraylist
		for (Item I : list) {
	%><div class="box">
		<img src="<%=I.getImg()%>" />
		<p class="text">
			<%=I.getName()%></p>
		<p class="text">
			<%=I.getSpeciality()%></p>
		<p class="text">
			Price:
			<%=I.getPrice()%></p>

		
		
			<button type="button" class="btn btn-outline-success btn-sm"><a href="RedirectItem?param1=<%=I.getName()%>">More Info</a></button>
		<script>
			function message(){
				alert("Item successfully added to the cart!");
			}
		</script>
			
		
	</div>
	<%
		}
	%>




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