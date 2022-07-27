<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 목록 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1 class="text-center">책 목록</h1>
		<table class="table">
			<tr class="text-center">
				<th class="col-2">id</th>
				<th class="col-2">표지</th>
				<th class="col-10">제목</th>		
			</tr>
			
			<tr class="text-center">
				<td class="col-2">1000</td>
				<td class="col-2"><img src="/WebContent/img1.jpg" alt="아몬드"></td>
				<td class="col-10"><a href="/jsp/test08.jsp?title=아몬드&id=1000"><h1>아몬드</h1></a></td>
			</tr>
		
			<tr class="text-center">
				<td class="col-2">1001</td>
				<td class="col-2"><img src="/WebContent/img2.jpg" alt="사피엔스"></td>
				<td class="col-10"><a href="/jsp/test08.jsp?title=사피엔스&id=1001"><h1>사피엔스</h1></a></td>
			</tr>
		
			<tr class="text-center">
				<td class="col-2">1002</td>
				<td class="col-2"><img src="/WebContent/img3.jpg" alt="코스모스"></td>
				<td class="col-10"><a href="/jsp/test08.jsp?title=코스모스&id=1002"><h1>코스모스</h1></a></td>
			</tr>
			
			<tr class="text-center">
				<td class="col-2">1003</td>
				<td class="col-2"><img src="/WebContent/img4.jpg" alt="나미야 잡화점의 기적"></td>
				<td class="col-10"><a href="/jsp/test08.jsp?title=나미야 잡화점의 기적&id=1003"><h1>나미야 잡화점의 기적</h1></a></td>
			</tr>
		</table>
	
	
	
	
	</div>





</body>
</html>