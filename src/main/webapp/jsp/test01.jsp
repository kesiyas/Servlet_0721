<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>

	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i++) {
			
			sum += scores[i];		
		}
		
		double avg = (double)sum / scores.length;
	%>

	<h3><%= avg %></h3>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int num = 0;
		for(String score : scoreList) {
			if(score.equals("O")) {
				num += 10;
			}	
		}
	%>
	
	<h3><%= num %></h3>
	
	<%!
	
		public int sum() {
		
			
		
		}
	
	
	
	
	%>
	
	
	
	
	
	
	




</body>
</html>