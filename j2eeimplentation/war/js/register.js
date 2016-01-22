	

/*Validate the registration form and login form*/

function validateForm() {
	var name = document.getElementById("txt_name");
	var email = document.getElementById("txt_email");
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var username = document.getElementById("txt_username");	var password = document.getElementById("txt_password");
	var letters =/^[A-Za-z]+$/;
	var repassword = document.getElementById("txt_repassword");
		if ( (name.value.match(letters)) && (name.value == "" ) ) {
			if (email.value.match(mailformat))&& (name.value == "" ) )
			{
				
			}
			else {
				alert("invalid email format");
				return false;			
			} 
		else{
		document.getElementById("txt_name").style.borderColor = 'red';
		document.getElementById("txt_name").focus();
		return false;
	}
	
}
}
function validateUsername(username) {
	var letters = /^[A-Za-z]+$/;
	if (username.value.match(letters)) {
		document.getElementById("txt_name").style.borderColor = 'blue';
		return true;
	} else {
		document.getElementById("txt_name").style.borderColor = 'red';
		document.getElementById("txt_name").focus();
		return false;
	}
}
