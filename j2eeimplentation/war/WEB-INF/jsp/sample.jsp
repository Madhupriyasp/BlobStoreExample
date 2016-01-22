<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/create" name="regform" id="regform"
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
							<label for="text">Day</label>
						</p>
						<input id="day" name="day" tabindex="2" type="text" >
						<input id="period1" name="period1"  type="text" >

						<input id="period2" name="period2" type="text" >
						<input id="period3" name="period3" type="text" >
						<input id="period4" name="period4"  type="text" >
						<input id="period5" name="period5" type="text" >

						
						<input type="submit" class="button" name="submit" id="submit"
							tabindex="14" value="Sign me up!">

					</form>
</body>
</html>