<html>
<title>ABC Hospital</title>
<link rel="shortcut icon" href="https://png.pngtree.com/png-vector/20190224/ourmid/pngtree-plus-vector-icon-png-image_701496.jpg" type="image/x-icon">
<link rel="stylesheet" type="text/css" href=style1.css>
<body>
<header>
    <div class="main">
        <ul>
	    <li><a href="http://localhost:8085/JavaWebApplication/jsp/doctorsview.jsp"><strong>Login as Doctor</strong></a></li>
            <li><a href="http://localhost:8085/JavaWebApplication/jsp/register.jsp"><strong>SignUp</strong></a></li> 
            <li><a href="http://localhost:8085/JavaWebApplication/jsp/login.jsp"><strong>Login</strong></a></li> 
        </ul>
    </div>

<h2 style="font-size:75px;
    text-align: center;
    color:black;
    border:1px solid #fff transparent;
    padding: 160px;
    transition: 0.8s ease;
    text-shadow: 4px 4px 6px rgba(120,120,120);">Welcome to ABC hospital</h2>
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
</header>
</body>
</html>