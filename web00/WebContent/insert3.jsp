<%@page import="multi.ProductDAO"%>
<%@page import="multi.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="bag" class="multi.ProductVO"></jsp:useBean>
    <jsp:setProperty property="*" name="bag"/>
    <% 
    ProductDAO dao = new ProductDAO();
    dao.insert(bag);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
<style type="text/css">
body {
	background: #F8C8DC;
}
</style>
</head>
<body>
상품 등록 요청되었음.
<hr color="red">
<a href="insert3.html"><button>이전 페이지로</button></a>
<a href="product.html"><button>상품 정보 페이지로</button></a><br>
<%-- 상품 제목 : <%= bag.get %><br>
상품 이름 : <%= name %><br>
상품 내용 : <%= content %><br>
상품 가격 : <%= price %><br>
상품 회사 : <%= company %><br> --%>
<br>상품 이미지<br>
<img src="img/<%= bag.getImg() %>" width="200" alt="<%= bag.getImg() %>">
</body>
</html>