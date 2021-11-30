<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<%@ include file="header.jsp" %>

<%
String userName = (String)session.getAttribute("userName");
%>

<div align="center">
<h2>Product Management System</h2>
<label>Welcome <%= userName %></label>
</div>

</body>
</html>