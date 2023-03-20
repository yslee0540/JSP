<%@page import="multi.BbsDAO"%>
<%@page import="multi.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String no = request.getParameter("no");
    String content = request.getParameter("content");
    
    BbsVO bag = new BbsVO();
    bag.setNo(Integer.parseInt(no));
    bag.setContent(content);
    
    BbsDAO dao = new BbsDAO();
    dao.update(bag);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style type="text/css">
body {
	background: lightblue;
}
</style>
</head>
<body>
게시물 수정 요청되었음.
<hr color="blue">
<a href="update2.html"><button>이전 페이지로</button></a>
<a href="bbs.html"><button>게시판 정보 페이지로</button></a><br>
수정할 번호 : <%= no %><br>
수정할 내용 : <%= content %>
</body>
</html>