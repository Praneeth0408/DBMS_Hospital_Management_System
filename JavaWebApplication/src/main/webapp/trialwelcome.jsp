<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
pageEncoding="ISO-8859-1"%>
<%@ page import="net.codejava.CategoryDAO" %>
<%@ page import="net.codejava.Category" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	    <li><a href="http://localhost:8085/JavaWebApplication/loginpage.jsp"><strong>Go Back</strong></a></li>
              
        </ul>
<h1 style="
    text-align: center;
    color:black;
    border:1px solid #fff transparent;
    padding: 50px;
    transition: 0.8s ease;
    text-shadow: 4px 4px 6px rgba(120,120,120);">Book your appointment</h1>   
<br>
<br>
<form method="post" action="http://localhost:8085/JavaWebApplication/BookAppointment">
<pre>
Doctor:
<select name="category">
<% 
	CategoryDAO cd = new CategoryDAO();
	List<Category> listCategory = cd.categories();
	for(int i=0;i<listCategory.size();i++)
	{
%>
    <option value= <%=listCategory.get(i).getId()%>>
    	<%= listCategory.get(i).getName()%>
    </option>  
<%	} %>

</select>
<label for="appointment">Appointment date:</label>
<input type="date" name="appointment" required>
<label> Choose the Slot:</label>
<select name="slot">
	<option value="Morning">Morning slot</option>
	<option value="Afternoon">Afternoon slot</option>
	<option value="Evening">Evening slot</option>
</select>
<br>
<input type="submit" value="Book">
</pre>
</form>
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
</body>
</html>