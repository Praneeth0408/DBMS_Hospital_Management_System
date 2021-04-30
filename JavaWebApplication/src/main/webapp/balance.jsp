<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
pageEncoding="ISO-8859-1"%>
<%@ page import="net.codejava.PaymentDAO" %>
<%@ page import="net.codejava.Payment" %>
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
	    <li><a href="http://localhost:8085/JavaWebApplication/doctorwelcome.jsp"><strong>Go Back</strong></a></li>
	    <li><a href="http://localhost:8085/JavaWebApplication/logout.jsp"><strong>LogOut</strong></a>
	    </ul>
	    </div>
	    
<%response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);%>
<% 
float s = 0;
float t = 0;
if(session.getAttribute("doctor_id_in")==null)
	{
		response.sendRedirect("http://localhost:8085/JavaWebApplication/jsp/doctorsview.jsp");
	}
else
{
	int x = (int) session.getAttribute("doctor_id_in");
	
	String d = (String) session.getAttribute("d_date");
	System.out.println(d);
	PaymentDAO cd = new PaymentDAO();
	List<Payment> listCategory = cd.payments();
	
	for(int i=0;i<listCategory.size();i++)
	{
		if(listCategory.get(i).getDoc_id()==x)
		{
			s+=listCategory.get(i).getFee();
   	
		}
		
		//if(listCategory.get(i).getDoc_id()==x && listCategory.get(i).getDatee().equals(d))
		//{
			//t+=listCategory.get(i).getFee();
   	
		//}
	}
}%>
<h2>Total Money from Appointments: <%= s %>/-</h2>
</body>
</html>