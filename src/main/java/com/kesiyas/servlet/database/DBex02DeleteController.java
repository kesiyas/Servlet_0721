package com.kesiyas.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kesiyas.servlet.common.MysqlService;

@WebServlet("/db/ex02/delete")
public class DBex02DeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		// DELETE 쿼리 수행
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `new_user` WHERE `id` = " + id + ";";
		
		int count = mysqlService.update(query);
		
		mysqlService.disConnect();
		
		response.sendRedirect("/db/ex02.jsp");
		
	}
	
}
