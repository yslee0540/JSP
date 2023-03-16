<%@page import="multi.MemberVO"%>
<%@page import="multi.MemberDAO3"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    
	MemberDAO3 dao = new MemberDAO3();
    MemberVO bag = dao.one(id);
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
<a href="one.html"><button>검색 페이지로</button></a>
<a href="member.html"><button>회원정보 페이지로</button></a>
<hr color="green">
<table class="table table-dark table-striped table-hover">
	<tr>
		<td>패스워드</td>
		<td><%= bag.getPw() %></td>
	</tr>
	<tr>
		<td>이름</td>		
		<td><%= bag.getName() %></td>		
	</tr>
	<tr>
		<td>전화번호</td>		
		<td><%= bag.getTel() %></td>		
	</tr>
</table>
</body>
</html>