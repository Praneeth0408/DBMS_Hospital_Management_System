<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%session.invalidate();
response.sendRedirect("http://localhost:8085/JavaWebApplication/jsp/doctorsview.jsp");
%>
</body>
</html>