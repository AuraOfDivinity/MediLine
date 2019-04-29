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

				<p class="QText">What services does Laundry Bros provides?</p>
				<div id ="icoe1" onclick = "Expand1()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc1" onclick = "Collapse1()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A1Text" style= "display: none;">
					<p>We at Laundry Bros provide comprehensive Laundry services such as Wash & press, Steam Press and dry cleaning.</p>
				</div>

			</div>
			
			<div class="Question">
				<p class="QText">Do I need to separate my laundry?</p>
				<div id ="icoe2" onclick = "Expand2()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc2" onclick = "Collapse2()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A2Text" style= "display: none;">
					<p>There is no need to separate your colors and whites. We will do that for you. You should, however, be sure that your socks are not balled up, and that there aren't clothes inside of clothes, such as two shirts that you took off together, or shorts and sweats that came off together. These oversights will prevent your clothes from getting their cleanest and may result in color runs. We also suggest that women use garment bags for their bras and underwear to prevent damage and potential loss from the laundry machines (due to some of these garments being so small).</p>
				</div>
			</div>
			
			<div class="Question">
				<p class="QText">How can I be sure that nothing is missing?</p>
				<div id ="icoe3" onclick = "Expand3()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc3" onclick = "Collapse3()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A3Text" style= "display: none;">
					<p>We weigh the clothes when we receive them (to the tenth of the pound) and we weigh them when they are completed, so we always know when there is a problem in the system. We use a sophisticated bar-coding system to keep track of laundry throughout the process. We also wash and dry all of our customers' stuff individually (never mixing customers' laundry). To further insure against any laundry mix-ups, and to maintain the highest standard in service, we utilize a video surveillance system that watches all of the clothing as it moves through our laundry system. If you think something is missing, you can tell us and we will immediately investigate. However, all claims of missing clothes must be made within three days of laundry delivery or we will not be liable.</p>
				</div>
			</div>
			
			<div class="Question">
				<p class="QText">What are your service timings?</p>
				<div id ="icoe4" onclick = "Expand4()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc4" onclick = "Collapse4()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A4Text" style= "display: none;">
					<p>We work on all days of the week (except public holidays) </p>
				</div>
			</div>
			
			<div class="Question">
				<p class="QText">What if my clothes are heavily stained?</p>
				<div id ="icoe5" onclick = "Expand5()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc5" onclick = "Collapse5()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A5Text" style= "display: none;">
					<p>In case of tough stains, we would recommend you to use our stain removal or dry cleaning service.</p>
				</div>
			</div>
			
			<div class="Question">
				<p class="QText">What if my clothes are heavily stained?</p>
				<div id ="icoe6" onclick = "Expand6()">
					<i class="fas fa-plus-circle"></i>
				</div>
				<div id ="icoc6" onclick = "Collapse6()" style="display: none;">
					<i class="fas fa-minus-circle"></i>
				</div>
				<div id="A6Text" style= "display: none;">
					<p>You can call us on +94-777233483 or write to us on contact@laundrybros.com</p>
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