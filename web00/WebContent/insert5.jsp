<%@page import="multi.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="bag" class="multi.BookVO"></jsp:useBean>
    <jsp:setProperty property="*" name="bag"/>
    <% 
    BookDAO dao = new BookDAO();
    dao.insert(bag);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
<style type="text/css">
</style>
</head>
<body>
책 등록 요청되었음.
<hr color="green">
번호: <%= bag.getNo() %><br>
제목: <%= bag.getTitle() %><br>
내용: <%= bag.getContent() %><br>
작가: <%= bag.getWriter() %><br>
이미지: <%= bag.getImg() %>
</body>
</html>