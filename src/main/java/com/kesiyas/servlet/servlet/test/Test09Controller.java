package com.kesiyas.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {	

		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println("<html><head><title>신청결과</title></head><body>");
		out.println("<h1>" + name + "님 지원이 완료 되었습니다.</h1>");
		out.println("<hr>");
		out.println("지원내용<br>");
		out.println(introduce);
		out.println("</body></html>");
			
	}
	
			
}
