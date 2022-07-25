<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

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

	<h3>점수 평균은 <%= avg %> 입니다.</h3>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int num = 0;
		for(String score : scoreList) {
			if(score.equals("O")) {
				num += 10;
			}	
		}
	%>
	
	<h3>채점 결과는 <%= num %>점 입니다.</h3>
	
	<%!
		public int sum(int number) {
			int sum = 0;
			for(int i = 1; i <= 50; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	<h3>1에서 50까지의 합은 <%= sum(50)%></h3>
	
	<%
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		int year = Integer.parseInt(formatter.format(now).substring(0,4));
	
		String birthDay = "20010820";
		int birthYear = Integer.parseInt(birthDay.substring(0,4));
			
		int age = (year-birthYear) + 1;
	%>
	
	<h3>현재 나이는 <%= age%>살 입니다.</h3>
	

</body>
</html>