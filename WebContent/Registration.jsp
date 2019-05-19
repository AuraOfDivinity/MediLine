<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet">
<link href="Registration.css" type="text/css" rel="stylesheet">


</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="Landing.jsp"><img
			src="https://pre00.deviantart.net/e421/th/pre/i/2014/176/2/6/creative_laundry_logo__blue__by_creativelaundry-d7nyxkl.png"
			style="width: 30px;""></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li><a class="nav-link" href="Landing.jsp">Home <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About us</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Login </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="Member-Login.jsp">Member Login</a>
						<a class="dropdown-item" href="ALogin.html">Admin Login</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					href="Registration.html">Registration</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div id="content">
				
				<!--  Registration form used to call the Registration servlet -->
					<h1>Registration</h1>
					<br/>
					<form action="Registration" method="post">
						<ul>
							<li>First Name:  <input type="text" name="Fname" required pattern="^[a-zA-Z]{0,20}$" title="First Name must only contain 20 alphanumeric characters and cannot contain special characters"></li>
							<br/>
							<li>Last Name:  <input type="text" name="Lname" required pattern="^[a-zA-Z]{0,20}$" title="Last Name must only contain 20 alphanumeric characters and cannot contain special characters"></li>
							<br/>
							
							<li>Username:  <input type="text" name="Username" required pattern="^[a-zA-Z0-9]{7,20}$" title="Username must contain at least 7 characters and cannot be longer than 30"></li>
							<br/>
							<li>Password:  <input type="password" name="Password"  required pattern="^[a-zA-Z0-9]{7,20}$" title="Password must contain at least 7 characters and cannot be longer than 30"></li>
							<br/>
							<button class="btn btn-default btn-lg" type="submit">Register</button>
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