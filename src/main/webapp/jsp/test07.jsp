<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>    
<%@ page import="java.util.ArrayList" %>    
<%@ page import="java.util.Map" %>    
<%@ page import="java.util.HashMap" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<%
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	         
	%>
	
	<div class="container">
		<h1 class="text-center">검색 결과</h1>
		<table class="table">
			
			<tr>
				<th class="text-center">메뉴</th>	
				<th class="text-center">상호</th>	
				<th class="text-center">별점</th>	
			</tr>
			
			<%
			String menu = request.getParameter("menu");
		    String check = request.getParameter("check");
			
		    double point = 0;
		
			for(int i = 0; i < list.size(); i++){ 			
				point = (double)list.get(i).get("point");
					
				if(check.equals("on")) {						
					if(point > 4.0 && menu.equals(list.get(i).get("menu"))) { %>						
						<tr>
							<td class="text-center"><%= list.get(i).get("menu")%></td>
							<td class="text-center"><%= list.get(i).get("name")%></td>
							<td class="text-center"><%= list.get(i).get("point")%></td>			
						</tr>
					<% } 
					} 
				}%>	
				
				
			
		</table>
	
	</div>
	
	
	
	
	

</body>
</html>