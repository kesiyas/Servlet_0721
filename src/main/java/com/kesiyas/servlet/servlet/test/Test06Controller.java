package com.kesiyas.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test06")
public class Test06Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		
		String num2 = request.getParameter("number2");
		int number2 = Integer.parseInt(num2);
		
		int add = number1 + number2;
		int sub = number1 - number2;
		int mul = number1 * number2;
		int div = number1 / number2;
		// {"addtion" : add, "subtraction" : sub, "multipication" : mul, "division" : div}
		
		out.println("{\"addtion\" :" + add + ",\"subtraction\" :" + sub + ",\"multipication\" :" + mul + ",\"division\" :" + div + "}");
		
	}
	
	
}
