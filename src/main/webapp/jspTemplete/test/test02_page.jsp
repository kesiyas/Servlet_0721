<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>    
<%@ page import="java.util.ArrayList" %>    
<%@ page import="java.util.Map" %>    
<%@ page import="java.util.HashMap" %>  
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과 화면</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body>
	<%@ include file="test02_Data.jsp" %>
<% 
	
	String musicTitle = request.getParameter("title");
	
	String musicIdString = request.getParameter("id");
	int musicId = 0;
	if(musicIdString != null) {
		musicId = Integer.parseInt(request.getParameter("id"));
	}
%>
	

	<div class="container">
		<jsp:include page="test02_header.jsp" />
		
		<jsp:include page="test02_menu.jsp" />
		
		<section>
			
			<div class="d-flex p-3 border border-success">				
				<%for(Map<String, Object> info : musicList) {
					int minute = (Integer)info.get("time") / 60;
					int second = (Integer)info.get("time") % 60;
					int id = (Integer)info.get("id");
												
						if((musicIdString != null && musicId == id) ||
								(musicTitle != null && musicTitle.equals(info.get("title")))) { %>
							<img width="200" src=<%=info.get("thumbnail") %> alt="<%=info.get("title")%>">
							<div class="d-flex flex-column ml-3 col-7">
								<h1><%=info.get("title") %></h1>
								<div class="text-success font-weight-bold"><%=info.get("singer") %></div>
								
								<div class="d-flex mt-1">
									<div class="text-secondary">
										<div>앨범</div>     
										<div>재생시간</div>
										<div>작곡가</div> 
										<div>작사가</div> 
									</div>		
									<div class="ml-3 text-secondary">
										<div>:</div>
										<div>:</div>
										<div>:</div>
										<div>:</div>									
									</div>						
									<div class="ml-4 text-secondary">
										<div><%=info.get("title") %></div>
										<div><%=minute + " : " + second %></div>
										<div><%=info.get("composer") %> </div>
										<div><%=info.get("lyricist") %> </div>
									</div>
								</div>
							</div>
						
				<% 											  
			
					} 
				}%>
			</div>
				
			<div class="mt-2">
				<h3>곡 정보</h3>
				<hr>
				가사 정보 없음
			</div>
				
		</section>
		
		<jsp:include page="test02_footer.jsp" />
	
	</div>
	







</body>
</html>