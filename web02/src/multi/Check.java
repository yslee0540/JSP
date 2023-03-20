package multi;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/check.do")
public class Check extends HttpServlet {
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		//서블릿 만들 때, 패스워드가 안맞으면 어떻게 할지 지정
		System.out.println("Check 서블릿 객체가 하나 만들어진다.");
	}
	
	@Override
	public void destroy() {
		System.out.println("Check 서블릿 소멸됨.");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String today = request.getParameter("today");
		String result = "그냥 있자";
		if (today.equals("맑음")) {
			result = "나가자";
		} else if (today.equals("흐림")) {
			result = "코딩";
		} else if (today.equals("비옴")) {
			result = "쇼핑";
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		out.close();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String pass = request.getParameter("pass");
		String result = "들어올 수 없습니다<br><img src='img/no.png' width='100'>";
		if (pass.equals("나는왕이다")) {
			result = "들어오세요<br><img src='img/ok.png' width='100'>";
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		out.close();
	}

}
