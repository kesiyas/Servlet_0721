<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>키와 몸무게 입력</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	
	<div class="container">
		<h1>체격 조건 입력</h1>
	
		<form method="get" action="/jsp/test03.jsp">
			<div class="d-flex">		
				<input type="text" name="height" class="form-control col-3 mr-2"> cm
				<input type="text" name="weight" class="form-control col-3 mr-2"> kg
				<button type="submit" class="btn btn-info">계산</button>
			</div>
		</form>
	</div>
	


</body>
</html>