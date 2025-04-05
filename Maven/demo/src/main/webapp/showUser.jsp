<%@page import="com.navesh.web.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: olive;">
	<h1>In Show User</h1>
	<%
		User u1 = (User)request.getAttribute("user");
	
		out.println(u1);
	%>
</body>
</html>