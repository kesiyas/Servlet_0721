<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<%
		int number = Integer.parseInt(request.getParameter("number"));      
		String[] conversion = request.getParameterValues("length");
		
		String result = "";
	 	
		for(String val : conversion) { 
			
			if(val.equals("inch")) { 
					result += (number / 2.54) + " in<br>";
					
				}else if(val.equals("yard")) { 
					result += (number / 91.44) + " yard<br>"; 
					 
				}else if(val.equals("ft")) { 
					result += (number / 30.48) + " ft<br>"; 
					 
				}else if(val.equals("m")){ 
					result += (number / 100.0) + "m<br>";
				}
		}
		
	%>
	
	<div class="container">
		<h1>변환 결과</h1>
		<h3><%= number %>cm</h3>
		
		<hr>
		
		<h3>
		 	<%= result%>
		</h3>
	</div>




</body>
</html>