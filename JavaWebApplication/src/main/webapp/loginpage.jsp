<html>

<title>ABC Hospital</title>
<link rel="shortcut icon" href="https://png.pngtree.com/png-vector/20190224/ourmid/pngtree-plus-vector-icon-png-image_701496.jpg" type="image/x-icon"><link rel="stylesheet" type="text/css" href=style1.css>
<body>
<header>
    <div class="main">
        <ul>
	    <li><a href="http://localhost:8085/JavaWebApplication/trialwelcome.jsp"><strong>Book an Appointment</strong></a></li>
	    <li><a href="http://localhost:8085/JavaWebApplication/Myapp.jsp"><strong>My appointments</strong></a>
	    <li><a href="http://localhost:8085/JavaWebApplication/pres.jsp"><strong>Get prescription</strong></a>
         <li><a href="http://localhost:8085/JavaWebApplication/plogout.jsp"><strong>LogOut</strong></a>
              
        </ul>
    </div>
<h2 style="font-size:75px;
    text-align: center;
    color:black;
    border:1px solid #fff transparent;
    padding: 160px;
    transition: 0.8s ease;
    text-shadow: 4px 4px 6px rgba(120,120,120);">Hello <%=(String) session.getAttribute("Name") %></h2>
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