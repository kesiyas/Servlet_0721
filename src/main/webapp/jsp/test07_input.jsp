<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 검색</title>
</head>
<body>
	<div class="container">
		<h1>메뉴 검색</h1>
		<form method="post" action="/jsp/test07.jsp">
			<div class="d-flex">
				<input type="text" name="menu" class="form-control">
				<input type="checkbox" name="check" value="on" class="form-control">
				<div>4점 이하 제외</div>
			</div>
			<button type="submit" class="btn btn-success">검색</button>
		</form>
	</div>





</body>
</html>