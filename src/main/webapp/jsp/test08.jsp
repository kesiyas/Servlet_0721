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
<title>책 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<%
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {
        { 
            put("id", 1000);
            put("title", "아몬드"); 
            put("author", "손원평"); 
            put("publisher", "창비");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1001);
            put("title", "사피엔스"); 
            put("author", "유발 하라리"); 
            put("publisher", "김영사");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1002);
            put("title", "코스모스"); 
            put("author", "칼 세이건"); 
            put("publisher", "사이언스북");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1003);
            put("title", "나미야 잡화점의 기적"); 
            put("author", "히가시노 게이고"); 
            put("publisher", "현대문학");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
        } 
    };
    list.add(map);
	%>

	
	<%
		String title = request.getParameter("title");
		String id = request.getParameter("id");
	%>
	
	<% for(int i = 0; i < list.size(); i++) {
			String bookTitle = String.valueOf((list.get(i).get("title")));
			String author = String.valueOf((list.get(i).get("author")));
			String publisher = String.valueOf((list.get(i).get("publisher")));
			String image = String.valueOf((list.get(i).get("image")));
			
			if(title.equals(bookTitle)) { %>
				<div class="container">
					<div class="d-flex">
						<img height="400" class="mr-2" src=<%= image%>>
						
						<div class="d-flex flex-column">
							<span class="display-3"><%=bookTitle %></span>
							<span class="text-info display-4 mt-2"><%=author %></span>
							<h1 class="text-secondary mt-2"><%=publisher %></h1>
						</div>		
					</div>
				</div>
			
			<% }
			
		} %>
	
	
	



</body>
</html>