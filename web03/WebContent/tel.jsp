<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    String tel = request.getParameter("tel");
    String result = "";
    String pre = tel.substring(0, 3); //0~2
    Random r = new Random();
    int post = r.nextInt(900) + 100;
    
    switch(pre){
    case "010":
    	result = "100" + post;
    	break;
    case "011":
    	result = "111" + post;
    	break;
    default:
    	result = "222" + post;
    }
    %><%= result %>