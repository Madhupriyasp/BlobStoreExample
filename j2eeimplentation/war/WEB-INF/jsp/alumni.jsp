
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
<style>
#section>ul>li {
	color: blue;
}

#section h4 {
	font-family: Times New Roman;
	color: blue;
}

#section {
	left: 400px;
}

#section p { {
	font-family: Times New Roman;
}
</style>
<script src="js/jquery.js"></script>

<script src="js/bootstrap.js"></script>


</head>
<body>
	<div id="header">
		<div class="block_header">
			<img src="kcgimages/logo_text.gif" border="0" alt="logo" />
			<div class="container" id="cont">
				<a href="/" class="header-mainmenu"><strong>Home</strong></a> <a
					href="/about" class="header-mainmenu"><strong>About Us</strong></a>
				<a href="/course" class="header-mainmenu"><strong>Course
						offered</strong></a> <a href="/contactus" class="header-mainmenu"><strong>Contacts
						Us</strong></a> 
				 <a href="/alumni" class="header-mainmenu"><strong>Alumni</strong></a>&nbsp;

				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
				&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a
					href="https://www.facebook.com/KCG.College" target="_blank"> <img
					style="vertical-align: middle" src="kcgimages/fb-icon.png"
					border="0" />
				</a> &nbsp; <a href="http://Twitter.com/KCGtechnology" target="_blank">
					<img style="vertical-align: middle" src="kcgimages/twitter.png"
					border="0" />
				</a> &nbsp; <a
					href="http://in.linkedin.com/pub/kcg-college-chennai/33/596/850"
					target="_blank"> <img style="vertical-align: middle;"
					src="kcgimages/linkedin.png" border="0" /></a> &nbsp;

				


			</div>
			<h3 style="color: green;">${successMessage}</h3>
			<div class="error-message" style="color: #ff6565;">
				<p>${errorMessage}</p>
			</div>
		</div>
	</div>



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
	<div id="section">

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="5%">&nbsp;</td>
				<td class="page_top" width="67%">
					<h4>
						<em>Alumni</em>
					</h4><br>
				</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td width="5%">&nbsp;</td>
				<td valign="top" width="67%">
					<h4>
						<em>About KCG Connect</em>
					</h4>


					<p>KCG Connect is the alumni association of KCG College of
						Technology. Formally inaugurated on 15th August, 2014, the
						association aims to help the alumni reconnect with their friends
						from college and also with the college itself. In addition, the
						association has been formed in the hopes that current students of
						the college will also be able to benefit from industry connections
						that can be established through the alumni.</p><br>
					<h4>
						<em>About KCG College</em>
					</h4>
					<p>KCG College of Technology, a part of the Hindustan Group of
						institutions, was founded in 1998 by Dr. KCG Verghese. Formerly
						known as National Institute of Technology and Science, the college
						has been approved by AICTE, Government of India and is affiliated
						to Anna University. The college aims to provide quality
						engineering education to its young students and also to help them
						grow. The college provides both B.E/B.Tech and M.E courses.</p>
		</table>


	</div>

	<div id="footer"></div>

</body>
</html>
