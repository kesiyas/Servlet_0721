<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h1>길이 변환</h1>
		<form method="post" action="/jsp/test05.jsp">
			<div class="d-flex">
				<input text="type" name="number" class="form-control col-3"> cm
			</div>
			<div class="mt-2">
				<label>인치<input type="checkbox" name="length" value="inch"></label>
				<label>야드<input type="checkbox" name="length" value="yard"></label>
				<label>피트<input type="checkbox" name="length" value="ft"></label>
				<label>미터<input type="checkbox" name="length" value="m"></label>
			</div>
			<button type="submit" class="btn btn-success">변환</button>
		</form>
	</div>



</body>
</html>