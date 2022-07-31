package com.kesiyas.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kesiyas.servlet.common.HomeMysqlService;

@WebServlet("/db/test02")
public class DBtest02Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		HomeMysqlService mysqlService = new HomeMysqlService();
		mysqlService.connect();
		
		String selectQuery = "SELECT `name`, `url` FROM `bookmark` ORDER BY `id` ASC;";
		
		mysqlService.select(selectQuery);
		ResultSet resultSet = mysqlService.select(selectQuery);

		try {
			while(resultSet.next()) { 
				String name = resultSet.getString("name");
				String url = resultSet.getString("url");
			}		
		} catch (SQLException e) {				
			e.printStackTrace();
		}
		
		
		
	}
	
}
