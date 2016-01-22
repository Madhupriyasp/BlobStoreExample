

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/register.css">
<script type="text/javascript" src="js/register.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script src="js/jquery.js"></script>

<script src="js/bootstrap.js"></script>

<script>
	$(document).ready(function() {
		$(".childoption").hide();
		$(".parent-option select").change(function() {
			var selectedVal = $(":selected", this).val();
			if (selectedVal == "student") {
				$(".childoption").show();
			} else if (selectedVal == "admin") {
				$(".childoption").hide();
			} else if (selectedVal == "staff") {
				$(".childoption").hide();
			} else {
				$(".childoption").hide();
			}
		});
	});
</script>


</head>
<body>
	<!--Body tag Starts here -->

	<!--***********************Header Part***************************************** -->

	<div id="header">
		<div class="block_header">
			<img src="kcgimages/logo_text.gif" border="0" alt="logo" />
			<div class="container" id="cont">
				<a href="/" class="header-mainmenu"><strong>Home</strong></a> <a
					href="/aboutus" class="header-mainmenu"><strong>About
						Us</strong></a> <a href="/course" class="header-mainmenu"><strong>Course
						offered</strong></a> <a href="/contactus" class="header-mainmenu"><strong>Contacts
						Us</strong></a> <a href="/alumni" class="header-mainmenu"><strong>Alumni</strong></a>
				&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a
					href="https://www.facebook.com/KCG.College" target="_blank"> <img
					style="vertical-align: middle" src="kcgimages/fb-icon.png"
					border="0" /></a> &nbsp; <a href="http://Twitter.com/KCGtechnology"
					target="_blank"> <img style="vertical-align: middle"
					src="kcgimages/twitter.png" border="0" /></a> &nbsp; <a
					href="http://in.linkedin.com/pub/kcg-college-chennai/33/596/850"
					target="_blank"> <img style="vertical-align: middle;"
					src="kcgimages/linkedin.png" border="0" /></a> &nbsp;
				<div class="right_menu">
					<a href="#register" data-toggle="modal" class="btn btn-info"
						data-dismiss="modal">Register</a> <a href="#login"
						data-toggle="modal" class="btn btn-info" data-dismiss="modal">Login</a>
				</div>

			</div>
			<div class="successMessage" style="color: green;">
				<p>${successMessage}</p>
			</div>
			<div class="error-message" style="color: #ff6565;">
				<p>${errorMessage}</p>
			</div>
		</div>
	</div>


	<!--***********************Nav Part***************************************** -->


	<div id="nav">
		<p>
			<marquee behavior="alternate" direction="up">
				<img src="kcgimages/imagesprinci.jpg" width="300" height="200"
					alt="Natural" /> <img src="kcgimages/kcgconnect.jpg" width="300"
					height="120" alt="Natural" /> <img src="kcgimages/sports.jpg"
					width="300" height="120" alt="Natural" /> <img
					src="kcgimages/sports1.jpg" width="300" height="120" alt="Natural" />
				<img src="kcgimages/opinion2.jpg" width="300" height="120"
					alt="Natural" /> <img src="kcgimages/opinion1.jpg" width="300"
					height="120" alt="Natural" /> <img src="kcgimages/sports.jpg"
					width="300" height="120" alt="Natural" /> <img
					src="kcgimages/image7.jpg" width="300" height="120" alt="Natural" />

			</marquee>
		</p>

	</div>


	<!--***********************Div Modal for register***************************************** -->



	<div class="modal fade" id="register" role="dialog">
		<div class="modal-dialog">
			<div class="modal-body" style="background: white;">
				<div class="form">
					<form method="post" action="/add" name="regform" id="regform"
						>
						<h4 style="color: #4b8df9; text-align: center">Registration
							Form</h4>
						<%-- <div class="error-message" style="color: #ff6565;">

							<p>${errorMessage}</p>

						</div> --%>


						<p class="userInput">
							<label for="name">Name</label>
						</p>
						<input id="txt_name" name="name" placeholder="First and last name"
							tabindex="1" type="text" onchange="return validateUsername(this)" >




						<p class="userInput">
							<label for="email">Email</label>
						</p>
						<input id="txt_email" name="email"
							placeholder="example@domain.com" tabindex="2" type="email"
							>


						<p class="userInput">
							<label for="username">Create a username</label>
						</p>
						<input id="txt_username" name="username" placeholder="username"
							tabindex="3" type="text">


						<p class="userInput">
							<label for="password">Create a password</label>
						</p>
						<input type="password" id="txt_password" name="password1"
							placeholder="your password" tabindex="4"
							>


						<p class="userInput">
							<label for="repassword">Confirm your password</label>
						</p>
						<input type="password" id="txt_repassword" name="password2"
							placeholder="re-enter your password" tabindex="5"
						>


						<fieldset>
							<label>Birthday</label> <input type="date" name="birthday"
								id="date_birthday" tabindex="6"
						>

						</fieldset>


						<select class="select-style gender" name="gender" tabindex="7"
							required="" id="select_gender">
							<option value="0">Gender..</option>
							<option value="male">Male</option>
							<option value="female">Female</option>
							<option value="others">Other</option>
						</select><br> <br>


						<div class="parent-option">
							<select class="select-style role" id="select_role" name="role"
								tabindex="8" required="">
								<option value="-1">My role..</option>
								<option value="student">Student</option>
								<option value="staff">Staff</option>
								<option value="admin">Admin</option>
							</select><br> <br>
						</div>
						<div class="childoption">
							<label for="branch" class="userInput">Branch:</label> <select
								name="branch" id="select-branch" class="select-style"
								required="" tabindex="9">
								<option value="bca">BCA</option>
								<option value="bsc">BSC</option>
								<option value="mca">MCA</option>
								<option value="msc">MSC</option>
							</select> <label for="year" class="userInput">Year:</label> <select
								id="year" name="year" class="select-style" required=""
								tabindex="10">
								<option value="first_yesr">I</option>
								<option value="second_yesr">II</option>
								<option value="third_yesr">III</option>
							</select> <label for="semester" class="userInput">Semester:</label> <select
								id="semester" name="semester" class="select-style" required=""
								tabindex="11">
								<option value="sem1">I</option>
								<option value="sem2">II</option>
								<option value="sem3">III</option>
								<option value="sem4">VI</option>
								<option value="sem5">V</option>
								<option value="sem6">VI</option>
							</select>
						</div>

						<input type="submit" class="button" name="submit" id="submit"
							tabindex="14" value="Sign me up!"onclick="validateForm()">

					</form>

				</div>
				<div class="modal-footer">
					<a class="btn btn-danger" data-dismiss="modal">cancel</a>
				</div>
			</div>
		</div>
	</div>

	<!--***********************Div Modal for Login***************************************** -->


	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog">
			<div class="modal-body" style="background: white;">
				<div class="form">
					<form method="get" action="/you" name="loginform" id="loginform"
						onsubmit="return validateRadio()">
						<h4 style="color: #4b8df9; text-align: center">Login Here</h4>
						<div class="error-message" style="color: #ff6565;">

							<%-- <p>${errorMessage}</p>
 --%>
						</div>

						<p class="userInput">
							<label for="username">Username</label>
						</p>
						<input id="txt_username" name="username" placeholder="username"
							required="" tabindex="1" type="text"
							onchange="return validateUsername(this)">

						<p class="userInput">
							<label for="password">Password</label>
						</p>
						<input type="password" id="txt_password" name="password1"
							placeholder="your password" required="" tabindex="2"
							onchange="return validatePassword(this,5,12)"> 
<p>
							<div class="clearBoth" style="clear: both"></div> <input
							type="radio" name="role" value="student" checked>Student <input
							type="radio" name="role" value="staff">Staff <input
							type="radio" name="role" value="admin">Admin
							<div class="clearBoth" style="clear: both"></div>
						
	</p>					
						
						 <input type="submit" class="button" name="submit" id="submit"
							tabindex="14" value="Login">

					</form>
				</div>

				<div class="modal-footer">
					<a class="btn btn-danger" data-dismiss="modal">cancel</a>
				</div>
			</div>

		</div>
	</div>


	<!--***********************Section Part***************************************** -->


	<div id="section">
		<marquee direction="up" scrollamount="6"
			style="height: 200px; text-align: center">
			<p>
				<em> "..."KCG gave me an excellent platform to develop my
					technical <br> skills to be in the Toppers List..."<br> <br>
					"...the knowledge and guidance provided to me helped me crack<br>
					the placement interviews..."

				</em>
			</p>

		</marquee>
		<marquee direction="up" behavior="alternate" scrollamount="6"
			style="height: 1000px; text-align: center">
			<p>
				<em> </em>
			</p>

		</marquee>
	</div>


	<!--***********************About Us page of div***************************************** -->


	<div id="aboutus" style="display: none">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="5%">&nbsp;</td>
				<td class="page_top" width="67%">
					<h4>
						<em>KCG College of Technology</em>
					</h4>
				</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td width="5%">&nbsp;</td>
				<td valign="top" width="67%">
					<p>KCG College of Technology was founded in 1998 to fulfill the
						Founder-Chairman, Dr KCG Verghese's vision of "Making Every Man a
						Success and no Man a Failure". It is a Christian minority
						institution, affiliated to Anna University, Chennai and approved
						by AICTE, New Delhi.</p>
					<h4>
						<em>Vision</em>
					</h4>
					<p>To develop KCG into an institution of excellence in
						engineering education and training at graduate and post graduate
						levels and to carry out high quality research in science,
						engineering and technology.</p>
					<h4>
						<em>Mission</em>
					</h4>
					<p>To offer the best engineering education and to develop the
						young minds into an all-round personality to meet the growing
						challenges of industries and social needs of the country.</p>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><em><h4>Approval</h4></em>
								<p class="event_content">
									KCG College of Technology, formerly known as National Institute
									of Technology and Science is approved by the <a
										class="text_links" href="http://www.aicte-india.org/"
										target="_blank">AICTE</a>, Government of India, New Delhi,
									vide Lr. No.730-52-307 (E)/ET/97 dated 19-12-1997 and Govt. of
									Tamil Nadu, vide Lr. No.G.O.Ms.No.109 dated 23-03-1998. The
									College has been certified as an ISO 9001:2008 Institution.
								</p></td>

						</tr>
						<tr>
							<td>
								<h4>
									<em>Affiliation & Accreditation</em>
								</h4>
								<p class="event_content">
									The College is affiliated to <a class="text_links"
										href="http://www.annauniv.edu" target="_blank">Anna
										University</a>, Chennai, Anna University of Technology as per the
									Government of Tamil Nadu notification for conducting four year
									B.E./B.Tech Degree programmes, two year ME programmes and three
									year MCA programme. Mechanical Engineering, Electrical and
									Electronics Engineering, Computer Science Engineering courses
									of this college have been accredited by the National Board of
									Accreditation(NBA).
								</p>
							</td>

						</tr>
					</table>
					<h4>
						<em>College Campus</em>
					</h4>
					<p>The campus of KCG College of Technology is beautifully
						landscaped in a lush green stretch of land spread over 50 acres at
						Karapakkam, which is about 10 km from Adyar on the Old
						Mahabalipuram Road, the IT corridor of Chennai. The college
						operates a fleet of buses connecting all parts of the city for the
						convenience of the students and staff. Besides this, the college
						is well connected to different parts of the city by public
						transport buses.</p>

				</td>

			</tr>
		</table>

	</div>


	<!--***********************Final and Last one Footer Part***************************************** -->

	<div id="footer"></div>




	<!--Body tag ends here -->

</body>

<!--Html tag ends here -->

</html>
