<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.kesiyas.servlet.common.HomeMysqlService" %>
<%@ page import= "java.sql.ResultSet" %>
<%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
	String siteName = request.getParameter("name");
	String siteUrl = request.getParameter("url");
	
	HomeMysqlService mysqlService = new HomeMysqlService();
	mysqlService.connect();
	
	String insertQuery = "INSERT INTO `bookmark`\r\n"
			+ "			(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
			+ "			VALUE\r\n"
			+ "			(siteName, siteUrl, now(),now());";;
			
	mysqlService.update(insertQuery);
	
	String selectQuery = "SELECT `name`, `url` FROM `bookmark` ORDER BY `id` DESC;";
	
	ResultSet resultSet = mysqlService.select(selectQuery);
	
	
	
	%>
	
	<div class="container">
		<table class="table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
				</tr>
			</thead>
			<tbody>
			<% try {
				while(resultSet.next()) { 
					String name = resultSet.getString("name");
					String url = resultSet.getString("url");
					%>
					<tr>
						<td><%=name %></td>
						<td><a href=#><%=url %></a></td>	
					</tr>
				<%}
			} catch (SQLException e) {				
				e.printStackTrace();
			}
			
			mysqlService.disConnect();
			%>	
				
			</tbody>
		
		
		</table>
	
	
	</div>



</body>
</html>