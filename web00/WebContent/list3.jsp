<%@page import="java.util.ArrayList"%>
<%@page import="multi.ProductVO"%>
<%@page import="multi.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ProductDAO dao = new ProductDAO();
    ArrayList<ProductVO> list = dao.list();
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
<a href="product.html"><button class="btn btn-danger">첫 페이지로</button></a><br>
<hr color="blue">
<table class="table table-striped table-hover">
	<tr class="table-danger">
		<th>아이디</th>
		<th>상품명</th>
		<th>가격</th>
		<th>이미지</th>
	</tr> 
	<%
	if (list.size() != 0) {
		for(ProductVO bag2: list){
	%>
	<tr>
		<td><%= bag2.getId() %></td>
		<td>
			<a href="one3.jsp?id=<%= bag2.getId() %>">
				<%= bag2.getName() %>
			</a>
		</td>
		<td><%= bag2.getPrice() %>원</td>		
		<td><img src="img/<%= bag2.getImg() %>" width="200"></td>		
	</tr>
	<%
		}
	} else {
	%>
	<tr>
		<td colspan="4">검색결과 없음</td>
	</tr>
	<%
	} 
	%>
</table>
</body>
</html>