<%@page import="multi.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String no = request.getParameter("no");
    //jsp안에 만들어진 변수는 서버의 RAM에 저장되는 지역변수
    
    BbsDAO dao = new BbsDAO();
    dao.delete(no);
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
게시물 삭제 요청되었음.
<hr color="green">
<a href="delete2.html"><button>이전 페이지로</button></a><br>
삭제할 번호 : <%= no %>
</body>
</html>