package multi;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/monday.do")
public class Monday extends HttpServlet {
	String temp = "";
	public void init(ServletConfig config) throws ServletException {
		temp = config.getInitParameter("temp");
		System.out.println(temp);
	}
	
	//객체생성시 초기값 설정할 것 있으면 web.xml에 init-param을 읽어와서 사용
	//init(): 파라메터 있는 생성자 역할
	//서블릿 자체는 파라메터 있는 생성자 사용 불가능

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("오늘은 월요일이야<br>날씨는 " + temp);
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
