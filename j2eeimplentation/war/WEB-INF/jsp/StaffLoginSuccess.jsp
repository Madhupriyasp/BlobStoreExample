
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
<style>
#nav {
    width:400px;
    float:left;
    position:absolute;
    top:120px;
    width:284px;
    height:1100px;
    left:53px;
}
</style>

</head>
<body>
	<div id="header">
		<div class="block_header">
			<img src="kcgimages/logo_text.gif" border="0" alt="logo" />
			<div class="container" id="cont">
				<a href="/" class="header-mainmenu"><strong>Home</strong></a>
				 <a href="#about" class="header-mainmenu"><strong>About Us</strong></a>
				 <a href="/" class="header-mainmenu"><strong>Course offered</strong></a> 
				 <a href="/" class="header-mainmenu"><strong>Contacts Us</strong></a>
				 <a href="/" class="header-mainmenu"><strong>Alumni</strong></a>&nbsp;
				  
			<div class="socialmedia">
				<a href="https://www.facebook.com/KCG.College" target="_blank"> <img
					style="vertical-align: middle" src="kcgimages/fb-icon.png"
					border="0" /></a> &nbsp; <a href="http://Twitter.com/KCGtechnology"
					target="_blank"> <img style="vertical-align: middle"
					src="kcgimages/twitter.png" border="0" /></a> &nbsp; <a
					href="http://in.linkedin.com/pub/kcg-college-chennai/33/596/850"
					target="_blank"> <img style="vertical-align: middle;"
					src="kcgimages/linkedin.png" border="0" /></a> &nbsp;
					</div>
				<div class="right_menu" style="top:-30px;right:-150px">
					<a href="/" data-toggle="modal" class="btn btn-info"
						data-dismiss="modal">Logout</a> 
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


	<form method="post" action="/" name="login-success-form">
		<input type="submit" value="Logout" style="right:0px;top:-0px;position:absolute;background:#4b8df9"/>
			
					<p style = "color:green;font-size:20px"><em>Welcome! ${username}</em><br><br>
					</p>
					<p style = "color:black;font-size:16px">Please click below button to download your timetable!</p><br><br>
					 <a href="/download{branch}" class="download_btn" style="text-decoration:none">Download TimeTable</a> <br>
						
			
		</form>
	</div>

<div id="footer"></div>

</body>
</html>
