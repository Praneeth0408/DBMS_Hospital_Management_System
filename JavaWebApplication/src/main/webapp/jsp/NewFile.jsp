<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
pageEncoding="ISO-8859-1"%>
<%@ page import="net.codejava.MedicineDAO" %>
<%@ page import="net.codejava.Medicine" %>
<%@ page import="net.codejava.AppDAO" %>
<%@ page import="net.codejava.App" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
ul{
    font-size: 20px;
    float: right;
    list-style-type: none;
    margin-top: 25px;
}

ul li{
    display: inline-block;
}

ul li a{
    text-decoration: none;
    color: black;
    text-shadow: 1px 1px 2px rgba(120,120,120);
    padding: 5px 20px;
    border: 1px solid #fff transparent;
    border-radius: 50px;
    transition: 0.8s ease;
}

ul li a:hover{
    background-color: rgba(150,150,150);
    color: #fff;
}

.main{
    max-width: 1200px;
    margin: auto;
}
</style>
<meta charset="ISO-8859-1">
<title>ABC Hospital</title>
<link rel="shortcut icon" href="https://png.pngtree.com/png-vector/20190224/ourmid/pngtree-plus-vector-icon-png-image_701496.jpg" type="image/x-icon">
<link rel="stylesheet" type="text/css" href=style1.css>
</head>
<body>
<div class="main">
        <ul>
	    <li><a href="http://localhost:8085/JavaWebApplication/doctorwelcome.jsp"><strong>Go Back</strong></a></li>
            <li><a href="http://localhost:8085/JavaWebApplication/logout.jsp"><strong>LogOut</strong></a></li>  
        </ul>
    </div>
<h1>Dr.<%= (String) session.getAttribute("DOCName") %>, please give prescription</h1>

<form method="post" action="http://localhost:8085/JavaWebApplication/Prescription">
<pre>
Medicine:
<select name="Mname">
<%response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    if(session.getAttribute("doctor_id_in")==null)
	{
		response.sendRedirect("http://localhost:8085/JavaWebApplication/jsp/doctorsview.jsp");
	}
	else
	{
 
	MedicineDAO cd = new MedicineDAO();
	List<Medicine> listCategory = cd.medicines();
	for(int i=0;i<listCategory.size();i++)
	{
%>
    <option value= <%=listCategory.get(i).getMname()%>>
    	<%= listCategory.get(i).getMname()%>
    </option>  
<%	} 
%>

</select>
Patient:
<select name="Pat_name">
<% 
	int x = (int) session.getAttribute("doctor_id_in");
	String y = (String) session.getAttribute("d_date");
	AppDAO c = new AppDAO();
	List<App> listCategor = c.apps();
	for(int i=0;i<listCategor.size();i++)
	{
		if(listCategor.get(i).getid()==x && listCategor.get(i).getWhich_day().equals(y) )
		{
%>
    <option value= <%=listCategor.get(i).getPatient_name()%>>
    	<%= listCategor.get(i).getPatient_name() +" / "+ listCategor.get(i).getWhich_day() +" / "+ listCategor.get(i).getWhich_slot() %>
    </option>  
<%	}
} 
}%>

</select>

<label for="quantity">Quantity:</label>
<input type="Number" name="quantity" required>
<input type="submit" value="Prescribe">
</pre>
</form>

</body>
</html>