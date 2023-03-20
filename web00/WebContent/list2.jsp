<%@page import="java.util.ArrayList"%>
<%@page import="multi.BbsVO"%>
<%@page import="multi.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    BbsDAO dao = new BbsDAO();
    //dao가 리턴한 BbsVO가 들어간 ArrayList 받는다.
    ArrayList<BbsVO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
button {
	margin:10px 0 0;
}
a {
	text-decoration: none;
}
</style>
</head>
<body>
<a href="bbs.html"><button class="btn btn-primary">첫 페이지로</button></a>
글 개수: <%= list.size() %><br>
<hr color="blue">
<table class="table table-striped table-hover">
	<tr class="table-info">
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>글쓴이</th>
	</tr> 
	<%
		for(BbsVO bag2: list){
	%>
	<tr>
		<td><%= bag2.getNo() %></td>
		<td>
			<a href="http://localhost:8888/web00/one2.jsp?no=<%= bag2.getNo() %>">
				<%= bag2.getTitle() %>
			</a>
		</td>
		<td><%= bag2.getContent() %></td>		
		<td><%= bag2.getWriter() %></td>		
	</tr>
	<%
		}
	%>
</table>
</body>
</html>