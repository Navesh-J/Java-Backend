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
		// Clear the browser cache to prevent users from going back after logout
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");	//HTTP 1.1
		
		response.setHeader("Progma", "no-cache"); //HTTP 1.0
		
		response.setHeader("Expires", "0"); //Proxies
		
		if(session.getAttribute("username") == null){
			response.sendRedirect("login.jsp");
		}
	%>
	<div>Video 1</div>
	<div>Video 2</div>
	<div>Video 3</div>
	<div>Video 4</div>
	<div>Video 5</div>
	<a href="about.jsp">About Us</a>
	<form action="Logout">
		<input type="submit" value="Logout">
	</form>
</body>
</html>