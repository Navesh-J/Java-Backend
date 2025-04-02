<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>

	<%
		if(session.getAttribute("username") == null){
			response.sendRedirect("login.jsp");
		}
	%>
	<div>
		WELCOME ${username}
	</div>
	<div><a href="videos.jsp">Go to Videos</a></div>
	<form action="Logout">
		<input type="submit" value="Logout">
	</form>
</body>
</html>