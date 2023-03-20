<%@page import="multi.MemberDAO3"%>
<%@page import="multi.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String id = request.getParameter("id");

	MemberDAO3 dao = new MemberDAO3();
	dao.delete(id);
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
회원탈퇴 요청되었음.
<hr color="green">
	<a href="delete.html"><button>이전 페이지로</button></a>
	<a href="member.html"><button>회원정보 페이지로</button></a><br>
	탈퇴할 id : <%=id%><br>
</body>
</html>