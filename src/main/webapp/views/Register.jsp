

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body class="body_bg">
	<h3>Register Here</h3>
	 <!-- Success Message -->
    <c:if test="${not empty successMsg}">
        <h4 style="color: green">${successMsg}</h4>
    </c:if>
    
    <!-- Error Message -->
    <c:if test="${not empty errorMsg}">
        <h4 style="color: red">${errorMsg}</h4>
    </c:if>
	
	<form action="regForm" method="post">
		Name : <input type="text" name="name" /> <br> <br> 
		Email : <input type="email" name="email" /> <br> <br> 
		Password : <input type="password" name="password" /> <br> <br> 
		Phone No. : <input type="text" name="phoneno" /> <br> <br> 
		<input type="submit" value="Register" />

	</form>
	
	<br><br>
	If already registered... <a href="loginPage">Login Here <b>Click Here</b></a>
</body>
</html>