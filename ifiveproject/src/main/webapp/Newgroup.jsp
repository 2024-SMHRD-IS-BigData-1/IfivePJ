<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h5>그룹생성하기 </h5>
	<form action="NewgroupService.do" method="post">						
		<li><input type="text" name="group_name" placeholder="그룹명을 입력하세요"></li>							
		<li><input type="text" name="group_info" placeholder="그룹소개를 입력하세요"></li>	
		<li><input type="number" name="group_limit" placeholder="그룹 정원"></li>	
		<input type="submit" value="그룹 생성" >
	</form>
	

</body>
</html>