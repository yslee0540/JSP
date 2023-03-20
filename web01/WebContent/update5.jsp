<%@page import="multi.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="bag" class="multi.BookVO"></jsp:useBean>
    <jsp:setProperty property="*" name="bag"/>
    <% 
    BookDAO dao = new BookDAO();
    dao.update(bag);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style type="text/css">
</style>
</head>
<body>
책 수정 요청되었음.
<hr color="green">
수정할 번호: <%= bag.getNo() %><br>
수정할 내용: <%= bag.getContent() %><br>
</body>
</html>