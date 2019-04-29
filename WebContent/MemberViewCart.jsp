<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
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
<link href="https://fonts.googleapis.com/css?family=Julius+Sans+One"
	rel="stylesheet">
<link href="MemberViewCart.css" type="text/css" rel="stylesheet">

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
		<p>Your Cart</p>
	</div>
	<br />
	<br />
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div id="content">
					<ul>
						<%@ page import="java.util.*"%>
						<%@ page import="java.io.*"%>
						<%@ page import="Member.*"%>
						<%@ page import="Admin.*"%>


						<%
							//Obtaining the session
							HttpSession ss = request.getSession();
							float tot = 0;

							List<String> desc = (List<String>) session.getAttribute("cDesc");
							List<String> items = (List<String>) session.getAttribute("cart");
							List<Float> price = (List<Float>) session.getAttribute("cPrice");

							int i = 0;
							for (String temp : items) {
						%><li><%=temp + " " + desc.get(i) + " " + price.get(i)%>
							&nbsp;&nbsp;&nbsp;&nbsp;<a href="RemoveFromCart?indexNo=<%=i%>"><i
								class="icon fas fa-minus-circle"></a></i></li>

						<%
							i++;
							}
							for (float temp1 : price) {
								tot += temp1;

							}
						%>
					</ul>

					<p id="total">
						Total is:
						<%=tot%>
					</p>

					<a href="UpdateOrders?"><button type="button"
							class="btn btn-outline-success" onclick="message()">Continue
							to Checkout</button></a>
					<script>
						function message() {
							alert("Order was successfully placed. Your order will be collected within 24 hours!");
						}
					</script>


					<a href="RemoveAllCart?"><button type="button"
							class="btn btn-outline-danger">Delete order</button></a>
				</div>
			</div>
		</div>
	</div>
	<script defer
		src="https://use.fontawesome.com/releases/v5.0.10/js/all.js"
		integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+"
		crossorigin="anonymous"></script>

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