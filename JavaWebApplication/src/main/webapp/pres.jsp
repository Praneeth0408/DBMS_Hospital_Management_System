<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
pageEncoding="ISO-8859-1"%>
<%@ page import="net.codejava.PresDAO" %>
<%@ page import="net.codejava.Pres" %>
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
  color:rgba(50,50,50);
  background-color: rgba(175,175,175);
}
th{
		text-shadow:2px 2px 6px rgba(120,120,120);
	
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
	    <li><a href="http://localhost:8085/JavaWebApplication/loginpage.jsp"><strong>Go Back</strong></a></li>
	    <li><a href="http://localhost:8085/JavaWebApplication/plogout.jsp"><strong>LogOut</strong></a></li>
        </ul>
    </div>
    <h1 style="text-align:center;color:rgba(50,50,50);padding:50px;text-shadow:4px 4px 6px rgba(150,150,150)"">Here is your Prescription</h1> 
    <div style="margin-right:50px;margin-left:50px;"><table>
<tr>

    <th>Medicine</th>
    <th>Count</th>
 </tr>
<%response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);%>
<%
if(session.getAttribute("Name")==null)
{
	response.sendRedirect("http://localhost:8085/JavaWebApplication/jsp/login.jsp");
}
else{
	int x = (int) session.getAttribute("pid");
	System.out.println(x + "\n");
	PresDAO cd = new PresDAO();
	List<Pres> listCategory = cd.press();
	for(int i=0;i<listCategory.size();i++)
	{
		
		if(x == listCategory.get(i).getPat_id())
		{
%>
		   	<tr>
		
			    <td><%=listCategory.get(i).getMname() %></td>
			    <td><%=listCategory.get(i).getCount() %></td>
		  	</tr>  
<%}
} }%>
</table>
</div>
</body>
</html>