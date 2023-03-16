<%@page import="multi.BbsDAO"%>
<%@page import="multi.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String writer = request.getParameter("writer");
    
    BbsVO bag = new BbsVO();
    bag.setTitle(title);
    bag.setContent(content);
    bag.setWriter(writer);
    
    BbsDAO dao = new BbsDAO();
    dao.insert(bag);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
<style type="text/css">
body {
	background: lightblue;
}
</style>
</head>
<body>
게시판 글쓰기 요청되었음.
<hr color="blue">
<a href="insert2.html"><button>이전 페이지로</button></a>
<a href="bbs.html"><button>게시판 정보 페이지로</button></a><br>
게시물 제목 : <%= title %><br>
게시물 내용 : <%= content %><br>
게시물 작성자  : <%= writer %>
</body>
</html>