<%@page import="multi.MemberVO"%>
<%@page import="multi.MemberDAO3"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    String tel = request.getParameter("tel");
    
    MemberVO bag = new MemberVO();
    bag.setId(id);
    bag.setTel(tel);
    
    MemberDAO3 dao = new MemberDAO3();
    dao.update(bag);
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
회원수정 요청되었음.
<hr color="green">
<a href="update.html"><button>이전 페이지로</button></a>
<a href="member.html"><button>회원정보 페이지로</button></a><br>
수정할 id : <%= id %><br>
수정할 tel : <%= tel %>
</body>
</html>