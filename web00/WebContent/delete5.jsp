<%@page import="multi.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    int no = Integer.parseInt(request.getParameter("no"));
    BookDAO dao = new BookDAO();
    dao.delete(no);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
책 삭제 요청되었음.
<hr color="green">
삭제할 번호: <%= no %><br>
</body>
</html>