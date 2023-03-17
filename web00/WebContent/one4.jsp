<%@page import="multi.MovieVO"%>
<%@page import="multi.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    
	MovieDAO dao = new MovieDAO();
    MovieVO bag2 = dao.one(id);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
button {
	margin:10px 0 0;
}
</style>
</head>
<body>
검색을 원하는 아이디는 <%= id %><br>
<hr color="green">
<table class="table table-dark table-striped table-hover">
	<tr>
		<td>제목</td>
		<td><%= bag2.getTitle() %></td>
	</tr>
	<tr>
		<td>내용</td>		
		<td><%= bag2.getContent() %></td>		
	</tr>
	<tr>
		<td>장소</td>		
		<td><%= bag2.getLocation() %></td>		
	</tr>
	<tr>
		<td>감독</td>		
		<td><%= bag2.getDirector() %></td>		
	</tr>
</table>
</body>
</html>