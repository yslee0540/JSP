<%@page import="java.util.ArrayList"%>
<%@page import="multi.BookVO"%>
<%@page import="multi.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    BookDAO dao = new BookDAO();
    ArrayList<BookVO> list = dao.list();
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
a {
	text-decoration: none;
}
</style>
</head>
<body>
검색 결과: <%= list.size() %>개
<form action="one5.jsp">
제목 검색: <input name="title">
</form>
<hr color="blue">
<% if (list.size() == 0) { %>
<h3>등록된 책이 없습니다.</h3>
<% } else { %>
<table class="table table-striped table-hover">
	<tr class="table-success">
		<th>번호</th>
		<th>제목</th>
		<th>이미지</th>
	</tr> 
	<% for (BookVO bag2: list) { %>
	<tr>
		<td><%= bag2.getNo() %></td>
		<td>
			<a href="one5.jsp?title=<%= bag2.getTitle() %>">
				<%= bag2.getTitle() %>
			</a>
		</td>
		<td><img alt="" src="img/<%= bag2.getImg() %>" width="150"></td>		
	</tr>
	<% } %>
</table>
<% } %>
</body>
</html>