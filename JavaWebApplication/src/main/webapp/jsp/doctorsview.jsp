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
	    <li></li>
	    <li></li>
	    <li></li>
	    </ul>
	    </div>
<h1 style="font-size:75px;
    text-align: center;
    color:black;
    border:1px solid #fff transparent;
    padding: 75px;
    transition: 0.8s ease;
    text-shadow: 4px 4px 6px rgba(120,120,120);">Hello doctor</h1>
<h1 style="
    text-align: center;
    color:black;
    border:1px solid #fff transparent;
    transition: 0.8s ease;
    text-shadow: 4px 4px 6px rgba(120,120,120);"> Please enter your details correctly to view your appointments</h1>
<form method="post" action="http://localhost:8085/JavaWebApplication/doctorsviewpage">
	<pre>
	Name: 
	<input type="text" name="name" placeholder="Enter Your Name" required>
	Password: 
	<input type="password" name="password" placeholder="Enter Your Password" required>
	<input type="submit" value="Login">
	</pre>
</form>

</body>
<%response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);%>
<%
	if(session.getAttribute("doctor_id_in")!=null)
	{
		response.sendRedirect("http://localhost:8085/JavaWebApplication/doctorwelcome.jsp");
	}
if(session.getAttribute("Name")!=null)
{
	response.sendRedirect("http://localhost:8085/JavaWebApplication/loginpage.jsp");
}
%>
</html>