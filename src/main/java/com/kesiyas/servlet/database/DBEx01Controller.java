package com.kesiyas.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kesiyas.servlet.common.MysqlService;

//import com.kesiyas.servlet.common.HomeMysqlService;

@WebServlet("/db/ex01")
public class DBEx01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String selectQuery = "SELECT * FROM `booking`;";
		
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try {
			while(resultSet.next()) {
				String name = resultSet.getString("name");
				String state = resultSet.getString("state");
				
				out.println("이름 : " + name + "상태 : " + state);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		String insertQuery = "INSERT INTO `booking`\r\n"
				+ "(`name`, `headcount`, `day`, `date`, `state`, `createdAt`, `updatedAt`)\r\n"
				+ "Value\r\n"
				+ "(최인섭, '5', 2, '2026-10-10', '확정', now(), now());";	
		int count = mysqlService.update(insertQuery);
		out.println("삽입결과  : " + count);
		
		
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			// 접속 주소, 아이디, 패스워드
//			String url = "jdbc:mysql://localhost:3306/mydb_0707";
//			String userId = "root";
//			String password = "root";
//			
//			Connection connection = DriverManager.getConnection(url, userId, password);
//			
//			// 실제 쿼리를 수행하는 객체
//			Statement statement = connection.createStatement();
//			
//			// 실제 테이블 수행
//			String selectQuery = "SELECT * FROM `usedgoods`;";
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//			while(resultSet.next()) { 
//				
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				out.println("제목 : " + title + "가격 : " + price);
//			
//			}
//			
//			String insertQuery = "INSERT INTO `usedgoods`\r\n"
//					+ "(`seller_id`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
//					+ "Value\r\n"
//					+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 까탈스러워서 안먹어요', NULL, now(), now());";
//	
//			// insert, update, delete
//			// insert - 삽입된 행의 개수 update - 수정된 행의 개수 delete - 삭제된 행의 개수
//			int count = statement.executeUpdate(insertQuery);
//			out.println("삽입 결과 : " + count);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
	}
}
