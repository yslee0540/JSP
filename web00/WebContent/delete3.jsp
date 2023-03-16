<%@page import="multi.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String id = request.getParameter("id");

	ProductDAO dao = new ProductDAO();
	dao.delete(id);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
<style type="text/css">
body {
	background: #F8C8DC;
}
</style>
</head>
<body>
상품 삭제 요청되었음.
<hr color="red">
	<a href="delete3.html"><button>이전 페이지로</button></a>
	<a href="product.html"><button>상품 정보 페이지로</button></a><br>
	삭제할 id : <%=id%><br>
</body>
</html>