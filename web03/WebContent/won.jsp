<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    String w = request.getParameter("won");
    int won = Integer.parseInt(w);
    int result = won / 1283;
    
    %><%= result %>