<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Kakao JavaScript SDK</title>
  <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>	
</head>
<body>
  <button id="kakao-login-btn" style="background-color: #FEE500; color: black; border: none; font-weight: bold; padding: 10px 20px; border-radius: 5px; cursor: pointer;">
    카카오로 로그인
	</button>

    <script>
    Kakao.init('5d988841c896e18e470d2bab9c3492e6');

    function loginWithKakao() {
        Kakao.Auth.login({
            success: function(authObj) {
                console.log(authObj);

                // 사용자 정보 요청
                Kakao.API.request({
                    url: '/v2/user/me',
                    success: function(response) {
                        console.log(response);
                    },
                    fail: function(error) {
                        console.log(error);
                    }
                });
            },
            fail: function(err) {
                console.error(err);
            }
        });
    }

    document.getElementById('kakao-login-btn').addEventListener('click', loginWithKakao);


	</script>
	
	<script>
		Kakao.Auth.login({
		    success: function(authObj) {
		        console.log(authObj);
	
		        // 로그인 성공 후 main.jsp로 리디렉션
		        window.location.href = 'Main.jsp';
		    },
		    fail: function(err) {
		        console.error(err);
		    }
		});

	
	</script>
	


</body>
</html>