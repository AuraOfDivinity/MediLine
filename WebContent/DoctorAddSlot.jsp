<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add slot</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.0/css/mdb.min.css"
	rel="stylesheet">
<link href="DoctorAddSlot.css" type="text/css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans"
	rel="stylesheet">


</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

		if (session.getAttribute("username") == null) {
			response.sendRedirect("DoctorLogin.jsp");
		} else {
	%><jsp:include page="DoctorMenu.html" />
	<%
		}
	%>
	<!-- Default form subscription -->

	<div class="container">
		<div id="AddForm">
			<form class="text-center border border-light p-5">

				<p class="h4 mb-4">
					<span id="title">New Channeling Slot</span>
				</p>

				<p>
					<span id="topcontent">Create a new channeling slot by
						filling in the form and pressing submit.</span>
				</p>

				<!-- Name -->
				<input type="text" class="form-control mb-4" placeholder="Hospital"
					name="hospital">


				<!-- Email -->
				<input type="text" class="form-control mb-4" placeholder="Time"
					name="time"> <input type="text" class="form-control mb-4"
					placeholder="Price" name="price">


				<!-- Sign in button -->

				<button class="btn btn-info btn-block" type="submit">Submit</button>



			</form>
		</div>

	</div>
	<!-- Default form subscription -->
	<!-- JQuery -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script
		src="//cdn.jsdelivr.net/npm/alertifyjs@1.11.2/build/alertify.min.js"></script>



</body>
</html>