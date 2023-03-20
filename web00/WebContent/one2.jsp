<%@page import="multi.BbsVO"%>
<%@page import="multi.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String no = request.getParameter("no");
    
    BbsDAO dao = new BbsDAO();
    BbsVO bag2 = dao.one(Integer.parseInt(no));
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
검색을 원하는 번호는 <%= no %><br>
<a href="one2.html"><button>검색 페이지로</button></a>
<a href="bbs.html"><button>게시판 정보 페이지로</button></a><br>
<hr color="blue">
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
		<td>글쓴이</td>		
		<td><%= bag2.getWriter() %></td>		
	</tr>
</table>
</body>
</html>