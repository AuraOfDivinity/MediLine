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
<link
	href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans"
	rel="stylesheet">
<link href="DoctorHome.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1 
		response.setHeader("Pragma", "no-cache"); //HTTP 1.0 
		response.setDateHeader("Expires", 0); //prevents caching at the proxy server
	%>


	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

		if (session.getAttribute("username") == null) {
			response.sendRedirect("DoctorLogin.jsp");
		} else {
	%><jsp:include page="DoctorMenu.html" />
	<%
		}
	%>

	<%
		Item i = ItemDao.getPreparedItem();
		Item appointmentItem = ItemDao.getItemByUsername(session.getAttribute("username").toString());
	%>
	<div class="row">
		<div class="col-sm-4">
			<div class="card" style="margin: 2em">
				<img class="card-img-top" src="<%=i.getImg()%>" alt="doctor img"
					style="padding: 30px; margin: auto; border-radius: 5%">
				<div class="card-body">
					<h5 class="card-title">Profile</h5>

					<%@ page import="Admin.*"%>


					<span id="Desc-content">
						<p class="card-text">
							<strong>Name:</strong>
							<%=i.getName()%></p>
						<p class="card-text">
							<strong>Specialty:</strong> <span class="badge badge-primary"><%=i.getSpeciality()%>
						</p>
					</span>
					<p class="card-text">
						<strong>Description:</strong>
						<%=i.getDescription()%></p>
					<p class="card-text">
						<strong>Average cost per Appointment: </strong><%=i.getPrice()%></p>
					</span> <a href="DoctorEditProfile.jsp" class="btn btn-warning">Edit
						Profile <i class="fa fa-edit"></i>
					</a> <a href="#" class="btn btn-danger">Delete Profile <i
						class="fa fa-user-times"></i>
					</a>

				</div>
			</div>
		</div>
		<%@ page import="java.util.List"%>
		<%@ page import="Admin.*"%>
		<%@ page import="Member.*"%>

		<div class="col-sm-8">
			<div class="col-sm-12">
				<div class="card" style="margin: 2em">
					<div class="card-body">
						<h5 class="card-title">Created Appointment Slots</h5>
						<div class="row">
							<%
								AppointmentDao n = new AppointmentDao();
								List<Appointment> list = n.getAvailAppointments(session.getAttribute("username").toString());

								//For each loop to loop though the items in list arraylist
								for (Appointment A : list) {
							%>

							<div class="col-sm-3">
								<div class="card text-center">
									<div class="card-body">
										<h5 class="card-title">
											<strong>Appointment</strong>
										</h5>
										<p class="card-text">
											Hospital:
											<%=A.getHospital()%></p>
										<p class="card-text">
											Time:
											<%=A.getTime()%></p>
										<p class="card-text">
											Price:
											<%=A.getPrice()%></p>
										<a
											href="DeleteAppointment?hospital=<%=A.getHospital()%>&time=<%=A.getTime()%>"
											class="btn btn-danger">Delete</a>
									</div>
								</div>
							</div>
							<%
								}
							%>

						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="card" style="margin: 2em">
					<div class="card-body">
						<h5 class="card-title">Your Confirmed Appointments</h5>
						<div class="row">
							<%
								AppointmentDao n1 = new AppointmentDao();
								List<Appointment> list1 = n1.getConfAppointments(session.getAttribute("username").toString());

								//For each loop to loop though the items in list arraylist
								for (Appointment A : list1) {
							%>

							<div class="col-sm-3">
								<div class="card text-center">
									<div class="card-body">
										<h5 class="card-title">
											<strong>Appointment</strong>
										</h5>
										<p class="card-text">
											Hospital:
											<%=A.getHospital()%></p>
										<p class="card-text">
											Time:
											<%=A.getTime()%></p>
										<p class="card-text">
											Price:
											<%=A.getPrice()%></p>
										<a
											href="DeleteAppointment?hospital=<%=A.getHospital()%>&time=<%=A.getTime()%>"
											class="btn btn-danger">Cancel</a>
									</div>
								</div>
							</div>
							<%
								}
							%>

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