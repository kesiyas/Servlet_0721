package com.kesiyas.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
	    response.setContentType("text/plain");
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 m일");
		
		String dateTimString = formatter.format(now);
		
		// response안에 이미 있는 것을 PrintWriter로 가져온다
		PrintWriter out = response.getWriter();
		out.println(dateTimString);
		
	}
	
}
