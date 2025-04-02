<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Videos</title>
</head>
<body>

	<%
		if(session.getAttribute("username") == null){
			response.sendRedirect("login.jsp");
		}
	%>
	<div>Video 1</div>
	<div>Video 2</div>
	<div>Video 3</div>
	<div>Video 4</div>
	<div>Video 5</div>
	<form action="Logout">
		<input type="submit" value="Logout">
	</form>
</body>
</html>