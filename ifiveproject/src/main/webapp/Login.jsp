<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        .wrap{
            width: 1920px;
            height: 1316px;
        }
        .login_box{
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            font-size: 100%;
            box-sizing: border-box;
            font-family: 'noto sans kr', sans-serif;
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
        .button{
            position:absolute;
        }
        .login_button{
            position: absolute;
            margin-top: 10px;
            width: 342px; 
            height: 58px;
            left: 794px; 
            top: 507px; 
            border-radius: 5px;
            border: none;            
            font-size: 15px;
            background: #0F62FE;
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
       
    </style>
</head>
<body>
    <div class="wrap">
            <div style="left: 919px; top: 134px; position: absolute; color: black; font-size: 28px; font-family: Noto Sans KR; font-weight: 500; letter-spacing: 2.80px; word-wrap: break-word">로그인</div>
            <div style="width: 1920px; height: 90px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 1920px; height: 1px; left: 0px; top: 89px; position: absolute; background: #DBDBDB"></div>
            <div style="width: 84px; height: 34px; left: 320px; top: 23px; position: absolute; color: black; font-size: 28px; font-family: Noto Sans KR; font-weight: 700; letter-spacing: 2.80px; word-wrap: break-word">IFIVE</div>
            <div style="left: 789px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Group</div>
            <div style="left: 880px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Callender</div>
            <div style="left: 993px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Board</div>
            <div style="left: 1082px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Mypage</div>
            <div style="width: 112px; height: 35px; left: 1488px; top: 27px; position: absolute">
                <div style="width: 112px; height: 35px; left: 0px; top: 0px; position: absolute; background: white; border-radius: 30px; border: 1px #DBDBDB solid"></div>
                <div style="width: 70px; height: 22px; left: 21px; top: 7px; position: absolute">
                    <div style="left: 34px; top: 1px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Login</div>
                    <div style="width: 28px; height: 22px; left: 0px; top: 0px; position: absolute; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: inline-flex">
                        <div style="width: 28px; height: 22px"></div>
                        <div style="width: 18.67px; height: 14.67px; background: black"></div>
                    </div>
                </div>
            </div>
            <!-- login page box -->
            <form action="LoginService.do" method="post">
                <div class="login_box">
                    <div class="login_id_box_bg"></div>
                            <div class="login_id_typing_bar">


                                <input name="user_id" id="input-username" autocapitalize="off" type="text" placeholder="아이디를 입력하세요" value="">

                            </div>                        
                            <div class="login_pw_typing_bar">

                                <input name="user_pw" id="input-userpassword" autocapitalize="off" type="password" placeholder="비밀번호를 입력하세요">

                            </div>
                        <div class="button">

                            
                            <input class="login_button" type="submit" value="Login" >
                            
                            
                        </div>
                        
                </div>             
            </form>

            <div style="width: 40px; height: 40px; padding-right: 0.80px; left: 1046px; top: 677px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
                <div style="width: 39.20px; height: 40px; position: relative">
                    <div style="width: 19.20px; height: 18.80px; left: 20px; top: 16.36px; position: absolute; background: #4285F4"></div>
                    <div style="width: 31.09px; height: 16.19px; left: 2.15px; top: 23.81px; position: absolute; background: #34A853"></div>
                    <div style="width: 8.80px; height: 17.93px; left: 0px; top: 11.04px; position: absolute; background: #FBBC05"></div>
                    <div style="width: 31.24px; height: 16.20px; left: 2.15px; top: 0px; position: absolute; background: #EA4335"></div>
                </div>
            </div>
            <div style="width: 19px; height: 19px; left: 794px; top: 443px; position: absolute; background: #FFFEFE; border-radius: 9999px; border: 1px #DBDBDB solid"></div>
            <div style="width: 143px; left: 820px; top: 441px; position: absolute; color: #767676; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; letter-spacing: 1.50px; word-wrap: break-word">로그인 상태 유지</div>
            <div style="left: 915px; top: 611px; position: absolute; color: #767676; font-size: 18px; font-family: Noto Sans KR; font-weight: 400; letter-spacing: 1.80px; word-wrap: break-word">간편로그인</div>
            <div style="width: 115px; left: 1021px; top: 441px; position: absolute; color: #767676; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; letter-spacing: 1.50px; word-wrap: break-word">아이디/비밀번호</div>
            <div style="width: 342px; height: 58px; left: 794px; top: 785px; position: absolute; background: white; border: 1px black solid"></div>
            <div style="left: 929px; top: 801px; position: absolute; color: #B6ADAD; font-size: 18px; font-family: Noto Sans KR; font-weight: 500; letter-spacing: 1.80px; word-wrap: break-word">회원가입</div>
            <div style="width: 40px; height: 40px; left: 844px; top: 677px; position: absolute; background: white; border-radius: 9999px; overflow: hidden; border: 1px #E6E6EA solid; justify-content: center; align-items: center; display: inline-flex">
                <div style="width: 20px; height: 20px; position: relative">
                    <div style="width: 20px; height: 20px; left: 0px; top: 20px; position: absolute; background: #03C75A"></div>
                </div>
            </div>
            <div style="width: 50.58px; height: 40px; left: 975px; top: 677px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
                <div style="width: 50.58px; height: 40px; position: relative; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: flex">
                    <div style="width: 50.58px; height: 39.76px; background: #1877F2"></div>
                    <div style="width: 21.63px; height: 32.19px; background: white"></div>
                </div>
            </div>
            <div style="width: 50.58px; height: 40px; left: 904px; top: 677px; position: absolute">
                <div style="width: 50.58px; height: 40px; left: 0px; top: 0px; position: absolute; background: #FEE500; border-radius: 9999px"></div>
                <div style="width: 28.45px; height: 20.79px; left: 11.15px; top: 9.65px; position: absolute">
                    <div style="width: 28.45px; height: 20.79px; left: 0px; top: 0px; position: absolute; background: #392020"></div>
                    <div style="width: 6.37px; height: 6.04px; left: 2.58px; top: 6.34px; position: absolute; background: #FEE500"></div>
                    <div style="width: 6.51px; height: 6.15px; left: 7.12px; top: 6.24px; position: absolute; background: #FEE500"></div>
                    <div style="width: 5.24px; height: 6.04px; left: 13.87px; top: 6.24px; position: absolute; background: #FEE500"></div>
                    <div style="width: 6px; height: 6.10px; left: 19.22px; top: 6.24px; position: absolute; background: #FEE500"></div>
                </div>
            </div>
            <div style="width: 1920px; height: 252px; left: 0px; top: 1064px; position: absolute; background: white"></div>
            <div style="width: 1920px; height: 1px; left: 0px; top: 1066px; position: absolute; background: #DBDBDB"></div>
            <div style="left: 751px; top: 1120px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Group</div>
            <div style="left: 1095px; top: 1121px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">My page</div>
            <div style="left: 835px; top: 1120px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Callender</div>
            <div style="left: 1017px; top: 1121px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Point</div>
            <div style="left: 943px; top: 1121px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Chat</div>
            <div style="left: 902px; top: 1244px; position: absolute; color: #797979; font-size: 15px; font-family: Noto Sans KR; font-weight: 350; line-height: 15px; word-wrap: break-word">Ifive@naver.com</div>
            <div style="width: 35px; height: 27.68px; left: 792px; top: 1177px; position: absolute">
                <div style="width: 35px; height: 27.68px; left: 0px; top: 0px; position: absolute; background: #C4C4C4"></div>
                <div style="width: 35px; height: 27.68px; left: 0px; top: 0px; position: absolute; background: #C4C4C4; border-radius: 9999px"></div>
                <img style="width: 35px; height: 27.68px; left: 0px; top: 0px; position: absolute" src="https://via.placeholder.com/35x28" />
            </div>
            <div style="width: 35px; height: 27.68px; left: 893px; top: 1177px; position: absolute">
                <div style="width: 35px; height: 27.68px; left: 0px; top: 0px; position: absolute; background: black; border-radius: 9999px"></div>
                <div style="width: 22.96px; height: 18.17px; left: 6.02px; top: 4.76px; position: absolute">
                    <div style="width: 18.05px; height: 14.27px; left: 2.73px; top: 1.66px; position: absolute; background: white"></div>
                    <div style="width: 22.96px; height: 18.17px; left: 0px; top: 0px; position: absolute; background: black"></div>
                </div>
                <div style="width: 20.78px; height: 16.44px; left: 7.11px; top: 5.62px; position: absolute">
                    <div style="width: 20.78px; height: 16.44px; left: 0px; top: 0px; position: absolute; background: black"></div>
                    <div style="width: 19.68px; height: 14.39px; left: 0.61px; top: 1.06px; position: absolute; background: white"></div>
                    <div style="width: 4.41px; height: 4.18px; left: 2.39px; top: 5.45px; position: absolute; background: black"></div>
                    <div style="width: 4.51px; height: 4.25px; left: 5.54px; top: 5.37px; position: absolute; background: black"></div>
                    <div style="width: 3.63px; height: 4.18px; left: 10.20px; top: 5.37px; position: absolute; background: black"></div>
                    <div style="width: 4.15px; height: 4.22px; left: 13.91px; top: 5.37px; position: absolute; background: black"></div>
                </div>
            </div>
            <div style="width: 35px; height: 27.68px; left: 992px; top: 1177px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
                <img style="width: 35px; height: 27.68px" src="https://via.placeholder.com/35x28" />
            </div>
            <div style="width: 35px; height: 27.68px; left: 1091px; top: 1177px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
                <img style="width: 35px; height: 27.68px" src="https://via.placeholder.com/35x28" />
            </div>
        </div>
    </div>
    <script>
       
    </script>
</body>
</html>