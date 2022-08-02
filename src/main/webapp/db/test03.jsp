<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.kesiyas.servlet.common.MysqlService" %>
<%@ page import= "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/db/style.css">
</head>
<body>

<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String query = "select a.nickname, b.picture, b.title, b.price, b.id from seller a join used_goods b on a.id = b.sellerId ORDER BY b.id DESC";
			
	ResultSet resultSet = mysqlService.select(query);
%>

	<div class="container text-center">
		<jsp:include page="test03_header.jsp" />
		
		<jsp:include page="test03_menu.jsp" />
		
	
		<section class="d-flex flex-wrap justify-content-between">
			<% while(resultSet.next()) { 
				String boxId = "box" + resultSet.getInt("id");
			%>
			
			<div id="<%=boxId %>" class="mt-3 p-3 d-flex flex-column text-left border border-warning box">
				<% if(resultSet.getString("picture") == null) {%>
					<div class="text-secondary noimg w-100">이미지 없음</div>
				<%}else { %>
				<img id="image" class="mt-1" height="170" src=<%= resultSet.getString("picture")%> alt="제품 사진">
				
				<%} %>
				<div class="font-weight-bold mt-1"><%= resultSet.getString("title")%></div>
				<div class="small mt-1"><%= resultSet.getInt("price")%>원</div>
				<div class="text-warning mt-1"><%= resultSet.getString("nickname")%></div>
			</div>
			
			<% 
			} %>
			
		</section>
	
		<jsp:include page="test03_footer.jsp" />
		
	</div>
	
	<script>
		$(document).ready(function(){
		
			$("#image").on("hover",function() {
				$("#box1").css("background-color", "#db0d36");
				alter("경고");
			});
	
		});

	
	
	</script>

</body>
</html>