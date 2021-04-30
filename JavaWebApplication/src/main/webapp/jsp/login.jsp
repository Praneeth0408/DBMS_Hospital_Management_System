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
<h1 style="
    text-align: center;
    color:black;
    border:1px solid #fff transparent;
    padding: 50px;
    transition: 0.8s ease;
    text-shadow: 4px 4px 6px rgba(120,120,120);"> Login Here</h1>
<h2>Provide your credentials correctly</h2>
<form method="post" action="http://localhost:8085/JavaWebApplication/LoginPage">
	<pre>
	Name:   
    <input type="text" name="name" placeholder="Enter Your Name" required>
	Password: 
    <input type="password" name="password" placeholder="Enter Your Password" requied>
	<input type="submit" value="Login">
	</pre>
</form>
</body>
<%response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);%>
<%
	if(session.getAttribute("Name")!=null)
	{
		response.sendRedirect("http://localhost:8085/JavaWebApplication/loginpage.jsp");
	}
if(session.getAttribute("doctor_id_in")!=null)
{
	response.sendRedirect("http://localhost:8085/JavaWebApplication/doctorwelcome.jsp");
}
%>
</html>