<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
pageEncoding="ISO-8859-1"%>
<%@ page import="net.codejava.AppDAO" %>
<%@ page import="net.codejava.App" %>
<%@ page import="net.codejava.PaymentDAO" %>
<%@ page import="net.codejava.Payment" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: Century Gothic;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  color:black;
  background-color: rgba(175,175,175);
}

</style>
<meta charset="ISO-8859-1">
<title>ABC Hospital</title>
<link rel="shortcut icon" href="https://png.pngtree.com/png-vector/20190224/ourmid/pngtree-plus-vector-icon-png-image_701496.jpg" type="image/x-icon">
<link rel="stylesheet" type="text/css" href=style1.css>
</head>
<body>
<header>
<div class="main">
        <ul>
	    <li><a href="http://localhost:8085/JavaWebApplication/jsp/NewFile.jsp"><strong>Give prescription</strong></a></li>
	    <li><a href="http://localhost:8085/JavaWebApplication/logout.jsp"><strong>LogOut</strong></a>
	    
	    </ul>
	    </div>
	    <br>
<h1 style="text-align:center;color:black;padding:50px;text-shadow:4px 4px 6px rgba(150,150,150)">Hello Dr.<%= (String) session.getAttribute("DOCName") %><br>Here are your appointments</h1> 
<div style="margin-right:50px;margin-left:50px;"><table>
<tr>

    <th>Patient</th>
    <th>Date</th>
    <th>Slot</th>
 </tr>
<%response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);%>
<% 
float s=0;
if(session.getAttribute("doctor_id_in")==null)
	{
		response.sendRedirect("http://localhost:8085/JavaWebApplication/jsp/doctorsview.jsp");
	}
else
{
	int x = (int) session.getAttribute("doctor_id_in");
	
	String d = (String) session.getAttribute("d_date");
	System.out.println(d);
	AppDAO cd = new AppDAO();
	List<App> listCategory = cd.apps();
	for(int i=0;i<listCategory.size();i++)
	{
		if(listCategory.get(i).getid()==x)
		{
%>
   	<tr>

    <td><%=listCategory.get(i).getPatient_name() %></td>
    <td><%=listCategory.get(i).getWhich_day() %></td>
    <td><%=listCategory.get(i).getWhich_slot() %></td>
  </tr>  
<%		}
	}
	
		PaymentDAO a = new PaymentDAO();
		List<Payment> list = a.payments();
		
		for(int i=0;i<list.size();i++)
		{
			if(list.get(i).getDoc_id()==x)
			{
				s+=list.get(i).getFee();
	   	
			}
			
			//if(listCategory.get(i).getDoc_id()==x && listCategory.get(i).getDatee().equals(d))
			//{
				//t+=listCategory.get(i).getFee();
	   	
			//}
		}
}
%>

</table>
<h2>Total Money from Appointments: <div style="color:red;"><%= s %>/-</div></h2>
</div>
</header>
</body>
</html>