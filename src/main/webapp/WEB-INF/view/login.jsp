<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width", initial-scale=1>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- Alertify related links --> 
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
<!-- bootstrap links -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>WiseTask | Login</title>
<style>
*{
	box-sizing: border-box;
	margin: 0px;
	padding: 0px;
	font-family: 'Lato', sans-serif;
}
button, input[type="submit"], input[type="reset"], input[type="text"], input[type="password"] {  /*get rid of input default stylings*/
	background: none;
	color: inherit;
	border: none;
	padding: 0;
	font: inherit;
	outline: inherit;
}
a:hover, a:visited, a:link, a:active {
    text-decoration: none; /*removes default underline*/
    color: inherit; /*remove default color*/
    cursor: auto;
}
#loginHeader{
	font-size: 60px;
	font-weight: 300;
	font-style: italic;
	margin: 180px 0px 60px 0px;
}
#loginSectionBox{
	padding: 0px 110px 0px 110px;
}
#loginSectionContent{
	text-align: center;
}
#usernameInput{
	border-style: none none solid none;
	border-width: 3px;
	text-align: center;
	width: 350px;
	padding-bottom: 5px;
	font-size: 20px;
}
#passwordInput{
	border-style: none none solid none;
	border-width: 3px;
	text-align: center;
	width: 350px;
	padding-bottom: 5px;
	font-size: 20px;
}
.inputLabels{
	font-size: 25px;
	font-weight: 300;
	font-style: italic;
	margin-bottom: 15px;
}
#loginForm{
	display: block;
	margin-left: auto;
	margin-right: auto;
	position: relative;
	width: 350px;
}
#submitButton{
	height: 35px;
	 border-radius: 25px;
}
</style>
</head>
<body>
<div id="loginSectionBox">
	<div id="loginSectionContent">
		<div id="loginHeader">Welcome to WiseTask</div>
		<form id="loginForm">
			<div class="inputLabels">USERNAME</div>
			<input type="text" id="usernameInput" autocomplete="off" name="username">
			<div class="inputLabels" style="margin-top: 40px;">PASSWORD</div>
			<input type="password" id="passwordInput" autocomplete="off" name="password">
			<br><br><br><br>
			<div class="d-grid gap-2">
			<button class="btn-primary" type="submit" id="submitButton">
				LOG IN
			</button>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#loginForm').submit(function(event) {
			var formData = {
				username : $('#usernameInput').val(),
				password : $('#passwordInput').val()
			};
			validateUser(formData);
			event.preventDefault(); /*it prevents the form from refreshing the page (default behavior)*/
		});
		
		function validateUser(formData) {
			$.ajax({
				type : "POST",
	            dataType : "json",
	            contentType : "application/json",
	            data : JSON.stringify(formData),
				url : "http://localhost:8028/users/validateUser",
				success : function(responseData){
					if(responseData.valid == false) {
						alertify.error('User credentials are invalid.', 3);
					} else {
						var user = retreiveUserDetails(formData);
						window.location.href = "http://localhost:8025/prepareUserLogin?userId="
						+ user.userId + "&userType=" + user.userType + "";
					}
				},
				error : function(){
				}
			});
		}

		/* By adding the statement "async: false" the issue where the return value is 
		undefiled is fixed. Very important! That is because by setting that, the service that I am calling has to
		complete, before the next statements in the code (function), execute.
		source-> https://stackoverflow.com/questions/1478295/what-does-async-false-do-in-jquery-ajax*/
		
		function retreiveUserDetails(formData) {
			var user;
			$.ajax({
				type : "POST",
				dataType : "json",
				async: false,
	            contentType : "application/json",
	            data : JSON.stringify(formData),
	            url : "http://localhost:8028/users/getUser",
	            success : function(responseData){
	            	user = {
	            			userId : responseData.userId,
	            			userType : responseData.userType
	            	};
				},
				error : function(){
				}
			});
			return user;
		}

	});
</script>
</body>
</html>