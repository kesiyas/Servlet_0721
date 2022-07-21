package com.kesiyas.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다");
		
		String dateTimString = formatter.format(now);
		
		PrintWriter out = response.getWriter();
		out.println(dateTimString);
		
	}
	
}
