<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Login page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="styles.css">
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}
%>
<div class="d-flex justify-content-center">

<form class="content1" action="Logout">
<h1>Welcome ${username}</h1>
<input type="submit" class="L-BUTTON" value="LOGOUT">
</form></div>

<footer> <h4>This is the login page.</h4>
        Harshit Srivastava</footer>

</body>
</html>