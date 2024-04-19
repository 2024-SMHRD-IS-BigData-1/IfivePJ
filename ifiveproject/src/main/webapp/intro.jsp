<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


			<h5>회원가입</h5>
			<form action="JoinService.do" method="post">
				<li><input type="text" id="input_id" name="user_id" placeholder="ID를 입력하세요"></li>
				<li><input type="button" value="id 중복체크" onclick="checkID()"></li>
				<span id="checkID"></span>								
				<li><input type="password" name="user_pw" placeholder="PW를 입력하세요"></li>
				<li><input type="text" name="user_height" placeholder="키를 입력하세요"></li>	
				<li><input type="text" name="user_weight" placeholder="체중을 입력하세요"></li>	
				<li><input type="text" name="user_target_weight" placeholder="목표체중을 입력하세요"></li>									
				<li><input type="submit" value="JoinUs" ></li>
			</form>
			
			
			<h5>로그인</h5>
			<form action="LoginService.do" method="post">
				<li><input type="text" name="user_id" placeholder="ID를 입력하세요"></li>											
				<li><input type="password" name="user_pw" placeholder="PW를 입력하세요"></li>								
				<li><input type="submit" value="Login" ></li>
			</form>
			
			<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
			<script type="text/javascript">
			function checkID(){
				var input_id = $("#input_id").val()
				console.log(input_id)
				$.ajax(
					{
						// 어디로 요청할건지
						url : "IdCheck.do",
						// 어떤 데이터를 보낼건지
						data : {'input_id' : input_id},
						// 어떤 방식으로 요청할건지
						type : 'get',
						// 성공했을 때 / 실패했을 때 어떻게 처리할건지
						success : function(data){
							if(data=="true"){
								$('#checkID').html('사용 가능한 ID입니다')
							}else{
								$('#checkID').html('사용 불가능한 ID입니다')
							}
						},
						error : function(){
							alert("통신실패!")
							}
						}		
					)
				
				}
	
	
			</script>
			

			
			
			


</body>
</html>