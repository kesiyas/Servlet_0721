<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<%
	
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
	
		String symbols = request.getParameter("calculation");
	
		double result = 0;
		
		if(symbols.equals("+")) {	
			result = number1 + number2;
		}else if(symbols.equals("-")) {
			result = number1 - number2;
		}else if(symbols.equals("X")) {
			result = number1 * number2;
		}else {
			result = (double)number1 / number2;		
		}
	
	%>

	<div class="container">
		<h2>계산결과</h2>
	
		<div class="display-4">
			<%= number1 %> <%= symbols%> <%= number2 %> = <span class="text-primary"><%= result %></span>
		</div>
	
	</div>


</body>
</html>