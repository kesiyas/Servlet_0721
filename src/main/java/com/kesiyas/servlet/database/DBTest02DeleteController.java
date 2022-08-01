package com.kesiyas.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kesiyas.servlet.common.MysqlService;

@WebServlet("/db/test02/delete")
public class DBTest02DeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String id = request.getParameter("id");
		
		String query = "Delete FROM `bookmark` Where `id` = " + id + ";";
		
		int count = mysqlService.update(query);
		
		mysqlService.disConnect();
		
		response.sendRedirect("/db/test02.jsp");
	}
}
