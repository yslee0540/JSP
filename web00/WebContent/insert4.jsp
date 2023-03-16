<%@page import="multi.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="bag" class="multi.MovieVO"></jsp:useBean>
    <jsp:setProperty property="*" name="bag"/>
    <% 
    MovieDAO dao = new MovieDAO();
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
영화 등록 요청되었음.
<hr color="green">
id: <%= bag.getId() %><br>
title: <%= bag.getTitle() %><br>
content: <%= bag.getContent() %><br>
location: <%= bag.getLocation() %><br>
director: <%= bag.getDirector() %>
</body>
</html>