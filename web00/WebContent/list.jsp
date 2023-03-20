<%@page import="multi.MemberVO"%>
<%@page import="multi.MemberDAO3"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    MemberDAO3 dao = new MemberDAO3();
    ArrayList<MemberVO> list = dao.list();
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
a {
	text-decoration: none;
}
</style>
</head>
<body>
<a href="member.html"><button class="btn btn-success">첫 페이지로</button></a><br>
<hr color="blue">
<table class="table table-striped table-hover">
	<tr bgcolor="lightgreen">
		<th>아이디</th>
		<th>패스워드</th>
		<th>이름</th>
		<th>전화번호</th>
	</tr> 
	<%
		for(MemberVO bag2: list){
	%>
	<tr>
		<td>
			<a href="http://localhost:8888/web00/one.jsp?id=<%= bag2.getId() %>">
				<%= bag2.getId() %>
			</a>
		</td>
		<td><%= bag2.getPw() %></td>
		<td><%= bag2.getName() %></td>		
		<td><%= bag2.getTel() %></td>		
	</tr>
	<%
		}
	%>
</table>
</body>
</html>