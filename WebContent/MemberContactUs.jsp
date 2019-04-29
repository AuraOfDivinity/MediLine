<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>

<link href="MemberContactUs.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet">

</head>
<body>

	<%
		if (session.getAttribute("username") == null) {
	%><jsp:include page="Menu_normal.html" />
	<%
		} else {
	%><jsp:include page="Menu_loggedin.html" />
	<%
		}
	%>

	<div class="header">
		<p>Contact Us</p>

	</div>

	<div class="center">
		<img src="http://i65.tinypic.com/17u9fq.jpg"
			style="width: 500px;">
	</div>


	<div id="map"  style="width:50%;height:250px; margin: auto;"></div>

	<script>
		function myMap() {
			var mapCanvas = document.getElementById("map");
			var mapOptions = {
				center : new google.maps.LatLng(6.9148227, 79.9730514),
				zoom : 15
			};
			var map = new google.maps.Map(mapCanvas, mapOptions);
		}
	</script>

	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBH2YEcSdJChZM6lJbJa8ChrKsYJqkJaWQ&callback=myMap"></script>

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