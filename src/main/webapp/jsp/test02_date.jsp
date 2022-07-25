<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<%
	
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜 yyyy년 MM월 dd일");	
		SimpleDateFormat timeFormat = new SimpleDateFormat("현재 시간 HH시 mm분 ss초");
		
		String dateString = formatter.format(now);
		String currentTime = timeFormat.format(now);
		
		String what = request.getParameter("what");
		
		String targetString = null;
		if(what.equals("date")) {
			targetString = dateString;
		} else {
			targetString = currentTime;
		}
	
	%>
	
	<div class="container">
		<span class="display-4"><%= targetString %></span>
	</div>

</body>
</html>