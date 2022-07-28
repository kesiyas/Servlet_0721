<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 검색</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	
	<div class="container">
		<h1>메뉴 검색</h1>
		<form method="post" action="/jsp/test07.jsp">
			<div class="d-flex">
				<input type="text" name="menu" class="form-control col-3 mr-2">
				
				<div class="d-flex align-items-center">
					<input type="checkbox" name="check" value="on" class="mr-2">
					<div>4점 이하 제외</div>
				</div>			
			</div>
			<button type="submit" class="mt-2 btn btn-success">검색</button>
		</form>
	</div>





</body>
</html>