<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Frequently Asked Questions</title>

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
<link href="FAQ.css" type="text/css" rel="stylesheet">

</head>
<body>

	<jsp:include page="Menu_normal.html" />

	<div class="header">
		<p>Frequently Asked Questions</p>

	</div>

	<div id="main">
		<div class="container">

			<div class="Question">

				<p class="QText">What services does MediLine provides?</p>
				<div id ="icoe1" onclick = "Expand1()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc1" onclick = "Collapse1()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A1Text" style= "display: none;">
					<p>We at MediLine medicare services  provide e channeling services intended to make your life much easier.</p>
				</div>

			</div>
			
			<div class="Question">
				<p class="QText">How can I make an appointment/appointments?</p>
				<div id ="icoe2" onclick = "Expand2()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc2" onclick = "Collapse2()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A2Text" style= "display: none;">
					<p>All you have to do is search for the doctor, using the search facility provided on this web site. After selecting the required session of the doctor, you have to give details of the patient and make the payments to confirm the appointment. You will need a credit card to make the payment; any Visa, Master card or American Express credit card is accepted. When you reach the payment page in this web site, you should select the relevant Internet Payment Gateway (IPG), either Sampath bank, HSBC or Seylan bank for Visa and Master card to process the payment. Thereafter, from this web site, you will be connected to the payment gateways of either Sampath bank , HSBC or Seylan bank, or to the payment gateway of American Express where you can enter credit card details securely to pay for the appointment. The web site will present you with the receipt you should print, to be produced at the hospital. If there's no printer available you can just write down the reference number and go to the hospital. You can obtain the channel receipt from the channeling counter.</p>
				</div>
			</div>
			
			<div class="Question">
				<p class="QText">Can I make payments in cash if I channel through the bank ?</p>
				<div id ="icoe3" onclick = "Expand3()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc3" onclick = "Collapse3()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A3Text" style= "display: none;">
					<p>Please go to the nearest Sampath bank branch or the Peoples bank branch and channel the doctor of your choice. You can make payments in cash to the teller and obtain a receipt for your channel appointment. If you have an account at Sampath bank or Peoples bank, you can also charge the payment to your account with the bank.</p>
				</div>
			</div>
			
			<div class="Question">
				<p class="QText">How can I get technical support for channeling through the internet ?</p>
				<div id ="icoe4" onclick = "Expand4()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc4" onclick = "Collapse4()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A4Text" style= "display: none;">
					<p>If you have encountered any difficulties using this web site, please call 0712345678 between 8.30 a.m. to 5.00 p.m.  </p>
				</div>
			</div>
			
			<div class="Question">
				<p class="QText">How do I cancel an appointment that I have made on the internet or at the bank ?</p>
				<div id ="icoe5" onclick = "Expand5()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc5" onclick = "Collapse5()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A5Text" style= "display: none;">
					<p>An appointment can be cancelled by Logging into your user profile and clicking on the cancel button of the respective appointment</p>
				</div>
			</div>
			
			
		</div>
	</div>
	<script>
		function Expand1(){
			document.getElementById("icoe1").style.display = "none";
			document.getElementById("icoc1").style.display = "block";
			document.getElementById("A1Text").style.display = "block";
		}
		
		function Collapse1(){
			document.getElementById("icoe1").style.display = "block";
			document.getElementById("icoc1").style.display = "none";
			document.getElementById("A1Text").style.display = "none";
		}
		
		function Expand2(){
			document.getElementById("icoe2").style.display = "none";
			document.getElementById("icoc2").style.display = "block";
			document.getElementById("A2Text").style.display = "block";
		}
		
		function Collapse2(){
			document.getElementById("icoe2").style.display = "block";
			document.getElementById("icoc2").style.display = "none";
			document.getElementById("A2Text").style.display = "none";
		}
		
		function Expand3(){
			document.getElementById("icoe3").style.display = "none";
			document.getElementById("icoc3").style.display = "block";
			document.getElementById("A3Text").style.display = "block";
		}
		
		function Collapse3(){
			document.getElementById("icoe3").style.display = "block";
			document.getElementById("icoc3").style.display = "none";
			document.getElementById("A3Text").style.display = "none";
		}
		
		function Expand4(){
			document.getElementById("icoe4").style.display = "none";
			document.getElementById("icoc4").style.display = "block";
			document.getElementById("A4Text").style.display = "block";
		}
		
		function Collapse4(){
			document.getElementById("icoe4").style.display = "block";
			document.getElementById("icoc4").style.display = "none";
			document.getElementById("A4Text").style.display = "none";
		}
		
		function Expand5(){
			document.getElementById("icoe5").style.display = "none";
			document.getElementById("icoc5").style.display = "block";
			document.getElementById("A5Text").style.display = "block";
		}
		
		function Collapse5(){
			document.getElementById("icoe5").style.display = "block";
			document.getElementById("icoc5").style.display = "none";
			document.getElementById("A5Text").style.display = "none";
		}
		
		function Expand6(){
			document.getElementById("icoe6").style.display = "none";
			document.getElementById("icoc6").style.display = "block";
			document.getElementById("A6Text").style.display = "block";
		}
		
		function Collapse6(){
			document.getElementById("icoe6").style.display = "block";
			document.getElementById("icoc6").style.display = "none";
			document.getElementById("A6Text").style.display = "none";
		}
	</script>

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