package com.kesiyas.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kesiyas.servlet.common.MysqlService;

@WebServlet("/db/test02/insert")
public class DBtest02Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String siteName = request.getParameter("name");
		String siteUrl = request.getParameter("url");
		
		String insertQuery = "INSERT INTO `bookmark`\r\n"
				+ "			(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "			VALUE\r\n"
				+ "			('" + siteName + "', '" + siteUrl + "', now(),now());";;
				
		int count = mysqlService.update(insertQuery);
	
		mysqlService.disConnect();
		
		response.sendRedirect("/db/test02.jsp");
			
	}
	
}
