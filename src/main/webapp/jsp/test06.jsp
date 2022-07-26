<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장보기 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	%>
	
	<div class="container">
		<h1 class="text-center">장 목록</h1>
		<table border="1" class="table">
			<tr>
				<th class="text-center">번호</th>
				<th class="text-center">품목</th>	
			</tr>
			
			<% for(int i = 0; i < goodsList.size(); i++){ %>
			<tr>
				<td class="text-center"><%= i + 1 %></td>
				<td class="text-center"><%= goodsList.get(i) %></td>
			</tr>
			<%}%>
			
		
		</table>
	</div>
	
	
	

</body>
</html>