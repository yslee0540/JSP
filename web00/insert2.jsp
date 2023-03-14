<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 1. 전달된 값 받기(request 이용) -->
    <% 
    String no = request.getParameter("no");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String writer = request.getParameter("writer");
    %>
    <!-- 2. dao에게 값 전달 -->
    <!-- 3. 전달된 값을 출력하는 결과를 브라우저에 html로 보내기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
<style type="text/css">
body {
	background: lightgreen;
}
</style>
</head>
<body>
게시판 글쓰기 요청되었음.
<hr color="green">
게시물 번호 : <%= no %><br>
게시물 제목 : <%= title %><br>
게시물 내용 : <%= content %><br>
게시물 작성자  : <%= writer %>
</body>
</html>