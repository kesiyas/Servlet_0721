<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<%
		// 과일 이름 리스트
		List<String> fruits = new ArrayList<>();
		fruits.add("사과");
		fruits.add("바나나");
		fruits.add("딸기");
	
		String result = "";
		for(String item : fruits) {
			out.println("<h2>" + item + "</h2>");
		}
			
	%>

	<%-- <h2><%= result %></h2> --%>
	
	<%
	
		for(String item : fruits) {
	%>		
			<h2><%= item %></h2>
		<%}
	
	%>

	<table border="1">
	<% for(String item : fruits){ %>
		<tr>
			<td>item<td>
		</tr>		
	<% } %>	
	</table>






</body>
</html>