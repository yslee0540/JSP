<%@page import="multi.ProductVO"%>
<%@page import="multi.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String id = request.getParameter("id");

	ProductDAO dao = new ProductDAO();
	ProductVO bag2 = dao.one(id);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
button {
	margin:10px 0 0;
}
</style>
</head>
<body>
검색을 원하는 아이디는 <%= id %><br>
<a href="one3.html"><button>검색 페이지로</button></a>
<a href="product.html"><button>product 페이지로</button></a><br>
<hr color="blue">
<table class="table table-hover">
	<tr>
		<td class="table-danger">상품id</td>
		<td><%= bag2.getId() %></td>
	</tr>
	<tr>
		<td class="table-danger">상품명</td>
		<td><%= bag2.getName() %></td>
	</tr>
	<tr>
		<td class="table-danger">상품내용</td>		
		<td><%= bag2.getContent() %></td>		
	</tr>
	<tr>
		<td class="table-danger">상품가격</td>		
		<td><%= bag2.getPrice() %></td>		
	</tr>
	<tr>
		<td class="table-danger">제조회사</td>		
		<td><%= bag2.getCompany() %></td>		
	</tr>
	<tr>
		<td class="table-danger">상품이미지</td>		
		<td>
			<img src="img/<%= bag2.getImg() %>" width="300">
		</td>		
	</tr>
</table>
</body>
</html>