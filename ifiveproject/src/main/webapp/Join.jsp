<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff">
    <style>
      

        @font-face {
            font-family: 'Pretendard-Regular';
            src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
            font-weight: 400;
            font-style: normal;
        }





         .box{
            width: 100%; 
            height: 100%;
            position: relative;
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



        .join_box{
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            font-size: 100%;
            box-sizing: border-box;
            font-family: Pretendard-Regular;
            grid-column: 5 / span 4;

        }
        .join_box_bg{
            width: 460px;
            height: 834px; 
            left: 730px; 
            top: 235px; 
            position: absolute; 
            background: #FFFCFC; 
            box-shadow: 20px 20px 4px rgba(0, 0, 0, 0.05); 
            border-radius: 10px; 
            border: 1px #F4F4F4 solid;
        }
        .bar1{
            width: 342px; 
            height: 1px; 
            left: 793px; 
            top: 339px; 
            position: absolute; 
            background: #DBDBDB;
        }
        .bar2{
            width: 342px; 
            height: 1px; 
            left: 793px; 
            top: 418px;
            position: absolute; 
            background: #DBDBDB;
        }
        /* .bar3{
            width: 342px; 
            height: 1px; 
            left: 793px; 
            top: 497px; 
            position: absolute; 
            background: #DBDBDB;
        } */
        .bar4{
            width: 342px; 
            height: 1px; 
            left: 793px; 
            top: 497px; 
            position: absolute; 
            background: #DBDBDB;
        }
        .bar5{
            width: 342px; 
            height: 1px; 
            left: 793px; 
            top: 576px; 
            position: absolute; 
            background: #DBDBDB;
        }
        .bar6{
            width: 342px; 
            height: 1px; 
            left: 793px; 
            top: 655px; 
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
        #input-userpassword {
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
        #input-usernick {
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
        #input-userweight {
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
        #input-userheight {
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
        #input-usergoalweight {
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
        .button{
            position: absolute;
        }
        .join_button{
            width: 342px; 
            height: 58px; 
            left: 789px; 
            top: 718px;
            font-size: 18px;
            border-radius: 5px;
            font-weight: 500px; 
            margin-top: 10px;
            border: none;  
            position: absolute; 
            color: white;
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
        #IDcheck{
            width: 60px;
            height: 18px;
            left: 280px;
            top: 5px; 
            position: absolute; 
            color: #746F6F; 
            font-size: 12px; 
            font-family: Inter; 
            font-weight: 400; 
            border: none;  
            margin-top: 0px;
            background: none;
            word-wrap: break-word;
        }


        .or_bar1{
            width: 157px; 
            height: 1px; 
            left: 789px; 
            top: 830px; 
            position: absolute; 
            background: #DBDBDB
        }
        .or_bar2{
            width: 157px; 
            height: 1px; 
            left: 978px; 
            top: 830px; 
            position: absolute; 
            background: #DBDBDB;
        }
        .text_or{
            left: 952px; 
            top: 816px; 
            position: absolute; 
            color: #767676; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 400; 
            letter-spacing: 1.50px; 
            word-wrap: break-word
        }

        .google_login_box{
            width: 342px; 
            height: 35px; 
            left: 789px; 
            top: 865px; 
            position: absolute; 
            background: white; 
            border: 1px black solid
        }
        .google_login_text{
            left: 879px; 
            top: 874px; 
            position: absolute; 
            color: #B6ADAD; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            letter-spacing: 1.50px; 
            word-wrap: break-word
        }
        .google_img{
            width: 25px; 
            height: 25px; 
            padding-right: 0.50px; 
            left: 841px; 
            top: 870px; 
            position: absolute; 
            justify-content: center; 
            align-items: center; 
            display: inline-flex
        }

        .naver_login_box{
            width: 342px; 
            height: 35px; 
            left: 789px; 
            top: 923px; 
            position: absolute; 
            background: white; 
            border: 1px black solid;
        }
        .naver_login_text{
            left: 872px; 
            top: 931px; 
            position: absolute; 
            color: #B6ADAD; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            letter-spacing: 1.50px; 
            word-wrap: break-word
        }
        .naver_img{
            width: 30px; 
            height: 30px; 
            left: 839px; 
            top: 925px; 
            position: absolute; 
            background: #DBDBDB; 
            border-radius: 9999px; 
            overflow: hidden; 
            justify-content: center; 
            align-items: center; 
            display: inline-flex;
        }
        .kakako_login_box{
            width: 342px; 
            height: 35px; 
            left: 789px; 
            top: 981px; 
            position: absolute; 
            background: white; 
            border: 1px black solid
        }
        .kakako_login_text{
            left: 872px; 
            top: 989px; 
            position: absolute; 
            color: #B6ADAD; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            letter-spacing: 1.50px; 
            word-wrap: break-word
        }
        .kakao_img{
            width: 25px; 
            height: 25px; 
            left: 841px; 
            top: 986px; 
            position: absolute;
        }


        /* footer */
        .footer_box{
            width: 1920px; 
            height: 253px; 
            left: 0px; 
            top: 1382px; 
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
            top: 1382px; 
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
<body>
    <div style="width: 100%; height: 100%; position: relative; background: white">
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
                <a class="team_title" href="Main.jsp" role="button">
                    <div class="team_title_bg"></div>
                    <div class="team_title_text">IFIVE</div>
                </a>
            </div>
            <div class="header_bar"></div>
            <a class="login_button" href="Login.jsp" role="button">
                <div class="login_button_bg"></div>
                <div class="login_button_textBox">
                    <div class="login_button_textBg"></div>
                    <img class="login_button_img" src="./img/Person.jpg"></img>
                    <div class="login_textBox">
                        <div class="login_textBg"></div>
                        <div class="login_text">Login</div>
                    </div>
                </div>
            </a>
        </div>
    <form action="JoinService.do" method="post">
        <div class="join_box">
            <div class="join_box_bg"></div>
                <div class="bar1">
                    <input name="user_id" id="input_id" autocapitalize="off" type="text" placeholder="아이디를 입력하세요" value="">
                     <input id="IDcheck" type="button" value="중복체크" onclick="checkID()">
                     <span id="checkID"></span>
                </div>
                <div class="bar2">
                    <input name="user_pw" id="input-userpassword" autocapitalize="off" type="password" placeholder="비밀번호를 입력하세요" value="">
                    
                </div>
               
                <div class="bar4">
                    <input name="user_height" id="input-userheight" autocapitalize="off" type="text" placeholder="키를 입력하세요" value="">
                    
                </div>
                <div class="bar5">
                    <input name="user_weight" id="input-userweight" autocapitalize="off" type="text" placeholder="현재체중을 입력하세요" value="">
                    
                </div>
                <div class="bar6">
                    <input name="ser_target_weight" id="input-usergoalweight" autocapitalize="off" type="text" placeholder="목표체중을 입력하세요" value="">

                </div>
                
        </div>

        <div class="button">
            
                 <input class="join_button" type="submit" value="Join" >
           
        </div>
        <div class="or_bar1"></div>
                <div class="or_bar2"></div>
                <div class="text_or">or</div>
                
                <!-- sns login -->
                <div class="google_login_box"></div>
                <div class="google_login_text">구글 계정으로 가입하기</div>
                <img class="google_img" src="./img/Social Icons.png"></img>
                
                <div class="naver_login_box"></div>
                <div class="naver_login_text">네이버 계정으로 가입하기</div>
                <img class="naver_img" src="./img/네이버 로그인.png"></img>
                
                
                <div class="kakako_login_box"></div>
                <div class="kakako_login_text">카카오톡 계정으로 가입하기</div>
                <img class="kakao_img" src="./img/kakaotalk.png"></img>
            </div>
        
        
    </form>
    
    
    <!-- <div style="left: 1063px; top: 329px; position: absolute; color: #746F6F; font-size: 12px; font-family: Inter; font-weight: 400; word-wrap: break-word">중복체크</div> -->

      
        
        
        
         <div style="left: 904px; top: 134px; position: absolute; color: black; font-size: 28px; font-family: Pretendard-Regular; font-weight: 500; letter-spacing: 2.80px; word-wrap: break-word">회원가입</div>
        
        <!-- footer -->
        <div class="box">
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
                	  if(data == "true") {
                		    alert('사용 가능한 ID입니다');
                		} else {
                		    alert('사용 불가능한 ID입니다');
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