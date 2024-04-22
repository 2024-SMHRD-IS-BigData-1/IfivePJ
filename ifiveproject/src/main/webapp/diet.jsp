<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="button" id="input_food" value="식단기록">
	<script type="text/javascript">
	$("#input_food").on("click", function () {
	    // AJAX 요청 보내기
	    $.ajax({
	        type: "POST",
	        url: "Diet.do", 
	        date:{ 
	        	"diet" : diet
	        },
	        success: function (response) {
	            console.log("자바 클래스 실행 성공:", response);
	        },
	        error: function (error) {
	            console.error("자바 클래스 실행 중 오류 발생:", error);
	        }
	    });
	});</script>
</body>
</html>