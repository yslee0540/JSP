<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String id = request.getParameter("id");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
<style type="text/css">
body {
	background: lightgreen;
}
</style>
</head>
<body>
탈퇴할 id : <%= id %><br>
</body>
</html>