<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    String tel = request.getParameter("tel");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style type="text/css">
body {
	background: lightgreen
}
</style>
</head>
<body>
수정할 id : <%= id %><br>
수정할 tel : <%= tel %>
</body>
</html>