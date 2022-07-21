package com.kesiyas.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response header 조작
		response.setCharacterEncoding("utf-8");
		// 데이터 타입 (MIME)
		response.setContentType("text/plain");
		
		// 현재 날짜와 시간 보여주기
		// 2022-07-18 18:19:45
		
		// Date
		Date now = new Date();
		
		// 24시간 기준 HH 12시간 기준 hh
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateTimString = formatter.format(now);
		
		// 인스턴스의 바디부분을 쓰기 위한 객체
		PrintWriter out = response.getWriter();
		out.println(now);
		out.println(dateTimString);
	}
	
}
