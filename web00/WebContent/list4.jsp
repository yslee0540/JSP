<%@page import="java.util.ArrayList"%>
<%@page import="multi.MovieVO"%>
<%@page import="multi.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    MovieDAO dao = new MovieDAO();
    ArrayList<MovieVO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
button {
	margin:10px 0 0;
}
a {
	text-decoration: none;
}
</style>
</head>
<body>
<!-- <a href="movie.html"><button class="btn btn-danger">첫 페이지로</button></a><br>-->
검색 결과: <%= list.size() %>개
<hr color="blue">
<% if (list.size() == 0) { %>
<h3>등록된 영화가 없습니다.</h3>
<% } else { %>
<table class="table table-striped table-hover">
	<tr class="table-success">
		<th>아이디</th>
		<th>제목</th>
		<th>내용</th>
	</tr> 
	<% for (MovieVO bag2: list){ %>
	<tr>
		<td><%= bag2.getId() %></td>
		<td>
			<a href="one4.jsp?id=<%= bag2.getId() %>">
				<%= bag2.getTitle() %>
			</a>
		</td>
		<td><%= bag2.getContent() %></td>		
	</tr>
	<% } %>
</table>
<% } %>
</body>
</html>