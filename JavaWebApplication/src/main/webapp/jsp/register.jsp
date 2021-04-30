<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC Hospital</title>
<link rel="shortcut icon" href="https://png.pngtree.com/png-vector/20190224/ourmid/pngtree-plus-vector-icon-png-image_701496.jpg" type="image/x-icon">
<link rel="stylesheet" type="text/css" href=style1.css>
</head>
<body>
<div class="main">
        <ul>
	    <li><a href="http://localhost:8085/JavaWebApplication"><strong>Home</strong></a></li>
	    </ul>
	    </div>
<h1> Register Here</h1>
<form method="post" action="http://localhost:8085/JavaWebApplication/Register">
	<pre>
	Name: 
    <input type="text" name="name" placeholder="Enter Your Name" required>
	Email: 
    <input type="text" name="email" placeholder="Enter Your Email" required>
	Password: 
    <input type="password" name="password" placeholder="Enter Your Password" required>
   
	<input type="submit" value="SignUp">
	</pre>
</form>
</body>
</html>