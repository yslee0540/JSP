<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    int money = Integer.parseInt(request.getParameter("money"));
    String choice = request.getParameter("choice");
    
    switch(choice){
    case "1":
    	money = money - 1000;
    	break;
    case "2":
    	money = money + 1000;
    	break;
    }
    %><%= money %>