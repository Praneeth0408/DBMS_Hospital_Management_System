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
<header>
    <div class="main">
        <ul>
	    <li><a href="http://localhost:8085/JavaWebApplication/loginpage.jsp"><strong>Go Back</strong></a></li>
	    <li><a href="http://localhost:8085/JavaWebApplication/plogout.jsp"><strong>LogOut</strong></a></li>
	    
        </ul>
    </div>
<h2>Booked your appointment Succesfully</h2>
<%response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);%>
<%
	if(session.getAttribute("Name")==null)
	{
		response.sendRedirect("http://localhost:8085/JavaWebApplication/jsp/login.jsp");
	}
%>
</header>
</body>
</html>