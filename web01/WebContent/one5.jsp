<%@page import="java.util.ArrayList"%>
<%@page import="multi.BookVO"%>
<%@page import="multi.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String title = request.getParameter("title");
    
	BookDAO dao = new BookDAO();
    ArrayList<BookVO> list = dao.list2(title);
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
</style>
</head>
<body>
"<%= title %>" 검색 결과 <br>
<hr color="green">
<% if (list.size() == 0) { %>
<h3>등록된 책이 없습니다.</h3>
<% } else {
for (BookVO bag2: list) { %>
<table class="table table-striped table-hover">
	<tr>
		<td width="150">번호</td>
		<td><%= bag2.getNo() %></td>
		<td rowspan="4" width="200"><img alt="" src="img/<%= bag2.getImg() %>" width="200"></td>		
	</tr>
	<tr>
		<td>제목</td>
		<td><%= bag2.getTitle() %></td>
	</tr>
	<tr>
		<td>내용</td>		
		<td><%= bag2.getContent() %></td>		
	</tr>
	<tr>
		<td>작가</td>		
		<td><%= bag2.getWriter() %></td>		
	</tr>
</table>
<% } } %>
</body>
</html>