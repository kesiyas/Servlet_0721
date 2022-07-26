<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<%
		int number = Integer.parseInt(request.getParameter("number"));      
		String[] conversion = request.getParameterValues("length");
		
		String[] length = new String[4];
		for(String val : conversion) { 
			
			if(val.equals("inch")) { 
					 length[0] = (number / 2.54) + " inch";
					 
				}else if(val.equals("yard")) { 
					 length[1] = (number / 91.44) + " yard"; 
					 
				}else if(val.equals("ft")) { 
					 length[2] = (number / 30.48) + " ft"; 
					 
				}else if(val.equals("m")){ 
					 length[3] = (number / 100) + " m"; 
		 	}		
	 	 } 
	%>
	
	

	<div class="container">
		<h1>변환 결과</h1>
		<h3><%= number %>cm</h3>
		<hr>
		<h3>
		 	<% for(int i = 0; i < length.length; i++) {
		 		
		 			if(length[i] != null) { %>
		 				<%= length[i] %> <br>
		 			<% }
		 	} %>

		</h3>
	</div>




</body>
</html>