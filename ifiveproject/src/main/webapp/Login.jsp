<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff">

    <style>
       

        
        @font-face {
            font-family: 'Pretendard-Regular';
            src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
            font-weight: 400;
            font-style: normal;
        }

        
        .wrap{
            width: 1920px;
            height: 1316px;
        }
        /* header */
        .header_box1{
            width: 1920px; 
            height: 92px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
        }
        .header_box2{
            width: 1920px; 
            height: 91px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
        }
        .header_bg{
            width: 1920px; 
            height: 91px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }
        .login_button{
            width: 112px; 
            height: 35px; 
            left: 1527px; 
            top: 26px; 
            position: absolute;
        }
        .login_button_bg{
            width: 112px; 
            height: 35px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white; 
            border-radius: 30px; 
            border: 1px #DBDBDB solid;
        }
        .login_button_textBox{
            width: 70px; 
            height: 22px; 
            left: 21px; 
            top: 7px; 
            position: absolute;
        }
        .login_button_textBg{
            width: 70px; 
            height: 22px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }
        .login_button_img{
            width: 20px; 
            height: 20px; 
            left: 1px; 
            top: 1px; 
            position: absolute; 
            background: #DEDBDB;
        }
        .login_textBox{
            width: 43px; 
            height: 20px; 
            left: 27px; 
            top: 1px; 
            position: absolute;
        }
        .login_textBg{
            width: 43px; 
            height: 20px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }
        .input_text_login{
        	left: -4px; 
            top: -2px; 
            position: absolute; 
            color: black; 
            font-size: 14px; 
            font-family: Pretendard-Regular; 
            font-weight: 350; 
            word-wrap: break-word;
            border:none;
            background:white;
            cursor:pointer;
        
        }
        .login_text{
            left: 3px; 
            top: 4px; 
            position: absolute; 
            color: black; 
            font-size: 14px; 
            font-family: Pretendard-Regular; 
            font-weight: 350; 
            word-wrap: break-word;
        }
        .header_mypage{
            width: 50px; 
            height: 40px; 
            left: 1051px; 
            top: 26px; 
            position: absolute;
        }
        .header_mypage_bg{
            width: 50px; 
            height: 40px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }
        .header_mypage_text{
            left: 0px; 
            top: 10px; 
            position: absolute; 
            color: black; 
            font-size: 14px; 
            font-family: Pretendard-Regular; 
            font-weight: 350; 
            word-wrap: break-word;
        }
        .header_callender{
            width: 63px; 
            height: 40px; 
            left: 928px; 
            top: 26px; 
            position: absolute;
        }
        .header_callender_bg{
            width: 63px; 
            height: 40px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }
        .header_callender_text{
            left: 0px; 
            top: 10px; 
            position: absolute; 
            color: black; 
            font-size: 14px; 
            font-family: Pretendard-Regular; 
            font-weight: 350; 
            word-wrap: break-word;
        }

        .header_group{
            width: 41px; 
            height: 40px; 
            left: 827px; 
            top: 26px; 
            position: absolute;
        }
        .header_group_bg{
            width: 41px; 
            height: 40px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }
        .header_group_text{
            left: 0px; 
            top: 10px; 
            position: absolute; 
            color: black; 
            font-size: 14px; 
            font-family: Pretendard-Regular; 
            font-weight: 350; 
            word-wrap: break-word;
        }

        .team_title{
            width: 85px;
            height: 50px; 
            left: 320px; 
            top: 21px; 
            position: absolute;
        }
        .team_title_bg{
            width: 85px; 
            height: 50px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }
        .team_title_text{
            left: 2px; 
            top: 5px; 
            position: absolute; 
            color: black; 
            font-size: 28px; 
            font-family: Pretendard-Regular; 
            font-weight: 700; 
            letter-spacing: 2.80px; 
            word-wrap: break-word;
        }


        .header_bar{
            width: 1920px; 
            height: 1px; 
            left: 0px; 
            top: 91px; 
            position: absolute; 
            background: #D9D9D9;
        }


        /* pagetext */
        .pageText{
            left: 919px; 
            top: 134px; 
            position: absolute; 
            color: black; 
            font-size: 28px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            letter-spacing: 2.80px; 
            word-wrap: break-word;
        }

        /* login box */
        .login_box{
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            font-size: 100%;
            box-sizing: border-box;
            font-family: 'Pretendard-Regular', sans-serif;
            grid-column: 5 / span 4;

        }
        .login_id_box_bg{
            width: 460px; 
            height: 659px; 
            left: 730px; 
            top: 235px; 
            position: absolute; 
            background: #FFFCFC; 
            box-shadow: 20px 20px 4px rgba(0, 0, 0, 0.05); 
            border: 1px #F4F4F4 solid;
            
        }
        .login_id_typing_bar{
            width: 342px; 
            height: 1px; 
            left: 794px; 
            top: 335px; 
            position: absolute; 
            background: #DBDBDB;
        }
        #input-username {
            position: relative;
            top: -50px;
            /* login_typing_bar의 위치와 크기에 맞게 조절 */
            width: 342px; 
            height: 56px;
            
            border: none;
            outline: none;
            background-color: transparent;
            font-size: 15px; /* 원하는 크기로 조절 */
            font-family: sans-serif;
        }

        .login_pw_typing_bar{
            width: 342px; 
            height: 1px; 
            left: 794px; 
            top: 420px; 
            position: absolute; 
            background: #DBDBDB;
        }
        #input-userpassword{
            position: relative;
            top: -50px;

            width: 342px;
            height: 56px;

            border: none;
            outline: none;
            background-color: transparent;
            font-size: 15px;
            font-family: sans-serif;
        }

        .login_maintain{
            width: 165px; 
            height: 22px; 
            left: 782px; 
            top: 440px; 
            position: relative;
        }
        .maintain_button{
            width: 19px; 
            height: 19px; 
            left: 5px; 
            top: 0px; 
            position: absolute; 
            background: #FFFEFE; 
            border-radius: 9999px; 
            border: 1px #DBDBDB solid;
        }
        .maintain_text{
            width: 143px; 
            left: 30px; 
            top: 1px; 
            position: absolute; 
            color: #767676; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 400; 
            letter-spacing: 1.50px; 
            word-wrap: break-word
        }

        .find_id{
            width: 123px; 
            left: 1016px; 
            top: 450px; 
            position: absolute; 
            color: #767676; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 400; 
            letter-spacing: 1.50px; 
            word-wrap: break-word
        }

        .button{
            position:absolute;
        }
        /*.login_page_button{
            position: absolute;
            margin-top: 10px;
            width: 342px; 
            height: 58px;
            left: 790px; 
            top: 507px; 
            border-radius: 5px;
            border: none;            
            font-size: 15px;
            background: #0F62FE;
        }*/
        .input_login{
        	position: absolute;
            margin-top: 10px;
            width: 342px; 
            height: 58px;
            left: 790px; 
            top: 507px; 
            border-radius: 10px;
            border: none;            
            font-size: 18px;
            background: #0F62FE;
            color: white;
            cursor:pointer;
        
        
        }
       
        a{
            text-decoration: none;
            color: white;
            display: block;
            /* height: 100%;
            width: 100%; */
            padding: 0;
            margin: 0;
            display: flex; /*CSS3*/
            align-items: center; /*Vertical align*/
            justify-content: center; /*horizontal align*/
            font-size: 18px;
            font-family: sans-serif; 
            word-wrap: break-word;
           
        }

        .simple_login_text{
            left: 927px; 
            top: 620px; 
            position: absolute; 
            color: #767676; 
            font-size: 17px; 
            font-family: Pretendard-Regular; 
            font-weight: 400; 
            letter-spacing: 1.80px; 
            word-wrap: break-word
        }

        .snsbutton1{
            width: 40px; 
            height: 40px; 
            left: 844px; 
            top: 677px; 
            position: absolute; 
            background: white; 
            border-radius: 9999px; 
            overflow: hidden; 
            border: 1px #E6E6EA solid; 
            justify-content: center; 
            align-items: center; 
            display: inline-flex;
            background-color: #DBDBDB;
        }
        .snsbutton2{
            width: 40px; 
            height: 40px; 
            left: 914px; 
            top: 677px; 
            border-radius: 9999px; 
            position: absolute;
            background-color: #DBDBDB;
        }
        .snsbutton3{
            width: 40px; 
            height: 40px; 
            left: 984px; 
            top: 677px; 
            border-radius: 9999px; 
            position: absolute; 
            justify-content: center; 
            align-items: center; 
            display: inline-flex;
            background-color: #DBDBDB;
        }
        .snsbutton4{
            width: 40px; 
            height: 40px; 
            padding-right: 0.80px; 
            left: 1054px; 
            top: 677px; 
            border-radius: 9999px; 
            position: absolute; 
            justify-content: center; 
            align-items: center; 
            display: inline-flex;
        }

        .go_join_page_box{
            width: 342px; 
            height: 58px; 
            left: 794px; 
            top: 785px; 
            position: absolute; 
            background: white; 
            border: 1px black solid
        }
        .go_join_page_text{
            left: 132px; 
            top: 17px; 
            position: absolute; 
            color: #B6ADAD; 
            font-size: 18px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            letter-spacing: 1.80px; 
            word-wrap: break-word;
        }

        /* footer */
        .footer_box{
            width: 1920px; 
            height: 253px; 
            left: 0px; 
            top: 1064px; 
            position: absolute;
        }
        .footer_box_bg{
            width: 1920px; 
            height: 253px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }
        .footer_icon_box{
            width: 382px; 
            height: 252px; 
            left: 769px; 
            top: 1px; 
            position: absolute
        }
        .footer_icon_box_bg{
            width: 382px; 
            height: 252px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .footer_groupBox{
            width: 76px; 
            height: 20px; 
            left: 47px; 
            top: 50px; 
            position: absolute
        }
        .footer_groupBg{
            width: 76px; 
            height: 20px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .footer_groupText{
            left: 14px; 
            top: 2px; 
            position: absolute; 
            color: black; 
            font-size: 16px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            line-height: 16px; 
            word-wrap: break-word
        }
        .footer_Callender_box{
            width: 76px; 
            height: 20px; 
            left: 153px; 
            top: 50px; 
            position: absolute
        }
        .footer_CallenderBg{
            width: 76px; 
            height: 20px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .footer_CallenderText{
            left: 1px; 
            top: 2px; 
            position: absolute; 
            color: black; 
            font-size: 16px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            line-height: 16px; 
            word-wrap: break-word
        }
        .footer_mypage_box{
            width: 76px;
            height: 20px; 
            left: 259px; 
            top: 50px; 
            position: absolute
        }
        .footer_mypageBg{
            width: 76px; 
            height: 20px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .footer_bar{
            width: 1920px; 
            height: 1px; 
            left: 0px; 
            top: 1064px; 
            position: absolute; 
            background: #D9D9D9
        }
        .footer_snsbutton1{
            width: 35px; 
            height: 35px; 
            left: 25px; 
            top: 106px; 
            position: absolute; 
        }
        .footer_snsbutton2{
            width: 35px; height: 35px; left: 124px; top: 106px; position: absolute; 
        }
        .footer_snsbutton3{
            width: 35px; height: 35px; left: 223px; top: 106px; position: absolute;
        }
        .footer_snsbutton4{
            width: 35px; height: 35px; left: 322px; top: 106px; position: absolute;
        }   



    </style>
     <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>   
</head>
<body>
    <div class="wrap">
        <!-- header -->
        <div class="header_box1">
                <div class="header_box2">
                    <div class="header_bg"></div>
                    
                    <a class="header_mypage" href="mypage.jsp" role="button">
                        <div class="header_mypage_bg"></div>
                        <div class="header_mypage_text">Mypage</div>
                    </a>
                    
                    <a class="header_callender" href="cal.jsp" role="button">
                        <div class="header_callender_bg"></div>
                        <div class="header_callender_text">Callender</div>
                    </a>
                    <a class="header_group" href="group.jsp" role="button">
                        <div class="header_group_bg"></div>
                        <div class="header_group_text">Group</div>
                    </a>
                    <a class="team_title" href="main.jsp" role="button">
                        <div class="team_title_bg"></div>
                        <div class="team_title_text">IFIVE</div>
                    </a>
                </div>
                <div class="header_bar"></div>
            <form action="LoginService.do" method="post">
                <a class="login_button" href="login.jsp" role="button">
                    <div class="login_button_bg"></div>
                    <div class="login_button_textBox">
                        <div class="login_button_textBg"></div>
                        <img class="login_button_img" src="./img/Person.jpg"></img>
                        <div class="login_textBox">
                            <div class="login_textBg"></div>
                            <div class="login_text"><input type="submit" class="input_text_login" value="Login"></input></div>
                        </div>
                    </div>
                </a>
            </div>
             <div class="pageText">로그인</div>
            <!-- login page box -->


                <div class="login_box">
                      <div class="login_id_box_bg"></div>
                            <div class="login_id_typing_bar">

                                <input name="user_id" id="input-username" autocapitalize="off" type="text" placeholder="아이디를 입력하세요" value="">
                                
                            </div>                        
                            <div class="login_pw_typing_bar">

                                <input name="user_pw" id="input-userpassword" autocapitalize="off" type="password" placeholder="비밀번호를 입력하세요">
                            </div>
                            <div class="login_maintain">
                                <div class="maintain_button"></div>
                                <div class="maintain_text">로그인 상태 유지</div>

                            </div>

                            <div class="find_id">아이디/비밀번호</div>
                       
                            <button class="login_page_button">
                                <a href="cal.jsp"><input type="submit" class="input_login" value="Login" ></input></a>
                            </button>
                        
            </form>
                        
                        <div class="simple_login_text">간편로그인</div>
                        
                        <img class="snsbutton1" src="./img/네이버 로그인.png"></img>
                        <img class="snsbutton2" src="./img/kakaotalk.png"></img>
                        <img class="snsbutton3" src="./img/Facebook.png"></img>
                        <img class="snsbutton4" src="./img/Social Icons.png"></img>
                        
                        <!-- 회원가입 버튼 -->
                        <a href="Join.jsp"><div class="go_join_page_box">
                            <div class="go_join_page_text">회원가입</div>
                        </div></a>
                </div>             

           <!-- footer -->
            <div class="footer_box">
                <div class="footer_box_bg">
                    <div class="footer_icon_box">
                        <div class="footer_icon_box_bg"></div>
                        <a class="footer_groupBox"  href="group.jsp" role="button">
                            <div class="footer_groupBg"></div>
                            <div class="footer_groupText">Group</div>
                        </a>
                        <a class="footer_Callender_box" href="cal.jsp" role="button">
                            <div class="footer_CallenderBg"></div>
                            <div class="footer_CallenderText">Callender</div>
                        </a>
                        <a class="footer_mypage_box" href="mypage.jsp" role="button">
                            <div class="footer_mypageBg"></div>
                            <div style="left: 7px; top: 2px; position: absolute; color: black; font-size: 16px; font-family: Pretendard-Regular; font-weight: 500; line-height: 16px; word-wrap: break-word">My Page</div>
                        </a>
        
                        <!-- sns icon -->
                        <img class="footer_snsbutton1" src="./img/youtube.png"></img>
                        <img class="footer_snsbutton2" src="./img/kakaotalk_black.png"></img>
                        <img class="footer_snsbutton3" src="./img/Instagram.png"></img>
                        <img class="footer_snsbutton4" src="./img/Facebook_black.png"></img>
                        <!-- 가상 네이버 주소 -->
                        <div style="width: 120px; height: 20px; left: 132px; top: 177px; position: absolute">
                            <div style="width: 120px; height: 20px; left: 0px; top: 0px; position: absolute; background: white"></div>
                            <div style="left: 0px; top: 2px; position: absolute; color: #797979; font-size: 15px; font-family: Pretendard-Regular; font-weight: 500; line-height: 15px; word-wrap: break-word">Ifive@naver.com</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer_bar"></div>
        </div>
    </div>
       <script>
          function onSignIn(googleUser) {
             var profile = googleUser.getBasicProfile();
             console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
             console.log('Name: ' + profile.getName());
             console.log('Image URL: ' + profile.getImageUrl());
             console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
           }
          
       
       </script>
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