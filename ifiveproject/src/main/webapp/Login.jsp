<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        .red-font{
            color:red;
        }
        .login-block > p>input{
            color: blue;
        }
        div p{
            color:hotpink;
        }
    </style>
</head>
<body>
    <h1 class="red-font">로그인 페이지</h1>
    <div class="login-block">
    	<form action="Loginservice" method="post">
        <p>
            ID : <input type="text" name ="id" >
        </p>
        <p>
            PW : <input type="password" name ="pw">
        </p>
	    <p>
	        이메일 입력: <input type="email" name = "email" >
	    </p>
        </form>
    </div>
    <button>로그인하기</button>
</body>
</html>