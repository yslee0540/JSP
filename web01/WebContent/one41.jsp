<%@page import="java.util.ArrayList"%>
<%@page import="multi.MovieVO"%>
<%@page import="multi.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String location = request.getParameter("location");
    
	MovieDAO dao = new MovieDAO();
    ArrayList<MovieVO> list = dao.list(location);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One</title>
<meta name="viewport" content="wlocationth=device-wlocationth, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
button {
	margin:10px 0 0;
}
</style>
</head>
<body>
검색을 원하는 장소는 <%= location %><br>
검색 결과: <%= list.size() %>개<br>
<hr color="green">
<% if (list.size() == 0){ %>
<h3>등록된 영화 없음</h3>
<% } else { %>
<table class="table table-striped table-hover">
	<tr class="table-success">
		<th>아이디</th>
		<th>제목</th>
		<th>내용</th>		
		<th>장소</th>		
		<th>감독</th>		
	</tr>
	<% for (MovieVO bag2 : list) {	%>
	<tr>
		<td><%= bag2.getId() %></td>
		<td><%= bag2.getTitle() %></td>
		<td><%= bag2.getContent() %></td>		
		<td><%= bag2.getLocation() %></td>		
		<td><%= bag2.getDirector() %></td>		
	</tr>
	<% } %>
</table>
<% } %>
</body>
</html>