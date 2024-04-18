<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


			<h5>회원가입</h5>
			<form action="JoinService.do" method="post">
				<li><input type="text" name="user_id" placeholder="ID를 입력하세요"></li>							
				<li><input type="password" name="user_pw" placeholder="PW를 입력하세요"></li>
				<li><input type="text" name="user_height" placeholder="키를 입력하세요"></li>	
				<li><input type="text" name="user_weight" placeholder="체중을 입력하세요"></li>	
				<li><input type="text" name="user_target_weight" placeholder="목표체중을 입력하세요"></li>					

				
				<li><input type="submit" value="JoinUs" ></li>
			</form>


</body>
</html>