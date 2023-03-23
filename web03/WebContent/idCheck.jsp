<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    String id = request.getParameter("id");
    String[] list = {"hong", "root", "admin"};
    String result = "<font color=green>가입 가능한 id입니다.</font>";
    for(String s : list) {
    	if(s.equals(id)) {
    		result = "<font color=red>이미 가입된 id입니다.</font>";
    		break;
    	}
    }
    %><%= result %>