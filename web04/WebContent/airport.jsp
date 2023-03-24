<%@page import="multi.AirportDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bag" class="multi.AirportVO"></jsp:useBean>
<jsp:setProperty property="*" name="bag"/>
<%
	AirportDAO dao = new AirportDAO();
	dao.insert(bag);
%>