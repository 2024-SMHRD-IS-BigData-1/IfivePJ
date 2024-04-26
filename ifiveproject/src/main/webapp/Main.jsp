<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%Member loginMember = (Member)session.getAttribute("loginMember"); %>
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
            margin: 10px auto;
            width: 1920px;
            height: 2985px;
        }
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
        	left: 0px; 
            top: 2px; 
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
        .input_text_logout{
        	left: 0px; 
            top: 6px; 
            position: absolute; 
            color: black; 
            font-size: 18px; 
            font-family: Pretendard-Regular; 
            font-weight: 200; 
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




      
        #record_img{
            width: 1600px; 
            height: 708px; 
            left: 160px; 
            top: 91px; 
            position: absolute;
        }
        #mainboard_title{
            left: 550px; 
            top: 238px; 
            position: absolute; 
            color: #DBDBDB; 
            font-size: 70px; 
            font-family: Pretendard-Regular; 
            font-weight: 800; 
            word-wrap: break-word;
        }
        #mainboard_subtitle{
            left: 548px; 
            top: 347px; 
            position: absolute; 
            color: #DBDBDB; 
            font-size: 40px; 
            font-family: Pretendard-Regular; 
            font-weight: 400; 
            word-wrap: break-word;
        }
       
        #record{
            left: 894px; 
            top: 485px; 
            position: absolute; 
            color: #DBDBDB; 
            font-size: 40px; 
            font-family: Pretendard-Regular; 
            font-weight: 350; 
            word-wrap: break-word;
        }
        #callender_exp{
            left: 872px; 
            top: 919px; 
            position: absolute; 
            color: black; 
            font-size: 40px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            word-wrap: break-word"
        }
        #cal_exp_box{
            width: 1280px; 
            height: 743px; 
            left: 320px; 
            top: 884px; 
            position: absolute; 
            background: white;
        }
        #cal_exp_img{
            width: 807px; 
            height: 618px; 
            left: 323px; 
            top: 1009px; 
            position: relative;
        }
        #cal_exp_textbox{
            width: 447px; 
            height: 618px; 
            left: 1154px; 
            top: 1009px; 
            position: absolute; 
            background: white;
        }
        #cal_exp_title{
            left: 1154px; 
            top: 1227px; 
            position: absolute; 
            color: black; 
            font-size: 30px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            word-wrap: break-word;
        }
        #cal_exp_subtitle{
            left: 1154px; 
            top: 1286px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 300; 
            word-wrap: break-word;
        }
        #cal_exp_button_box{
            width: 112px; 
            height: 41px; 
            left: 1407px; 
            top: 1346px; 
            position: absolute;
        }
        #cal_exp_button_bg{
            width: 112px; 
            height: 41px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white; 
            border-radius: 30px; 
            border: 1px white solid;
        }
        #cal_exp_button_bar{
            width: 100px; 
            height: 1px; 
            left: 7px; 
            top: 40px; 
            position: absolute; 
            background: #DBDBDB; 
            border-radius: 30px; 
            border: 1px #DBDBDB solid;
        }
        #cal_exp_button_text{
            left: 14px; 
            top: 10px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 350; 
            word-wrap: break-word;
        }
      
        #group_exp{
            left: 903px; 
            top: 1747px; 
            position: absolute; 
            color: black; 
            font-size: 40px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            word-wrap: break-word;
        }
        #gruop_exp_img{
            width: 807px; 
            height: 618px; 
            left: 794px; 
            top: 1837px; 
            position: absolute;
        }
        #group_exp_box{
            width: 447px; 
            height: 618px; 
            left: 323px; 
            top: 1837px; 
            position: absolute;
            background: white;
        }
        #group_exp_title{
            left: 430px; 
            top: 2089px; 
            position: absolute; 
            color: black; 
            font-size: 30px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            word-wrap: break-word;
        }
        #group_exp_subtitle{
            left: 440px;
            top: 2148px;
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 300; 
            word-wrap: break-word;
        }
        #group_exp_button_box{
            width: 100px; 
            height: 41px; 
            left: 660px; 
            top: 2218px; 
            position: absolute;
        }
        #group_exp_button_bg{
            width: 112px; 
            height: 41px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white; 
            border-radius: 30px; 
            border: 1px white solid;
        }
        #group_exp_button_bar{
            width: 80px; 
            height: 1px; 
            left: 29px; 
            top: 40px; 
            position: absolute; 
            background: #DBDBDB; 
            border-radius: 30px; 
            border: 1px #DBDBDB solid;
        }
        #gruop_exp_button_title{
            left: 38px; 
            top: 10px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 350; 
            word-wrap: break-word;
        }
        .up_button_box{
            width: 58px; 
            height: 52px; 
            left: 932px; 
            top: 2567px;
            position: absolute;
        }
        .up_button_img{
            width: 30px; 
            height: 30px; 
            left: 14.50px; 
            top: 19.50px; 
            position: absolute; 
        }
        .footer_box{
            width: 1920px; 
            height: 253px; 
            left: 0px; 
            top: 2731px; 
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
            top: 2730px; 
            position: absolute; 
            background: #D9D9D9
        }
       
       
        .footer_mypageText{
            left: 7px; 
            top: 2px;
            position: absolute; 
            color: black; 
            font-size: 16px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            line-height: 16px; 
            word-wrap: break-word
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
                <a class="team_title" href="Main.jsp" role="button">
                    <div class="team_title_bg"></div>
                    <div class="team_title_text">IFIVE</div>
                </a>
            </div>
            <div class="header_bar"></div>

              <% if (loginMember != null) { %>
                <!-- 로그인된 상태 -->
                <div class="login_button">
                    <a href="LogoutService.do"><input type="submit" class="input_text_logout" value="Logout"></a>
                </div>
            <% } else { %>
                <!-- 로그인 안된 상태 -->
                <a class="login_button" href="Login.jsp" role="button">
                    <div class="login_button_bg"></div>
                    <div class="login_button_textBox">
                        <div class="login_button_textBg"></div>
                       <img class="login_button_img" src="img/Person.jpg"></img>
                        <div class="login_textBox">
                            <div class="login_textBg"></div>
                            <div class="login_button">
                                <a href="Login.jsp"><input type="submit" class="input_text_login" value="Login"></input></a>
                            </div>
                        </div>
                    </div>
                </a>
            <% } %>
        </div>
       
       
       
       
      
 <nav>
            <a href="cal.jsp"><img id="record_img" src="./img/동기부여2.jpg" />
                <div id="mainboard_title">Life is like riding a bicycle</div>
                <div id="mainboard_subtitle">To keep your balance you must keep moving </div>
                <!-- <div id="mainboard_button"></div> -->
                <div id="record">Record</div>
            </a>
        </nav>

        <!-- callender exp -->
        <nav>
            <div id="cal_exp_box"></div>
                <div id="callender_exp">Callender</div>
                <a href="cal.jsp"><img id="cal_exp_img" src="img/캘린더1.jpg" alt="" /></a>
                <div id="cal_exp_textbox"></div>
                <div id="cal_exp_title">자신의 하루를 기록해보세요 </div>
                <div id="cal_exp_subtitle">“내일을 실현하는데 유일한 한계는 오늘에 대한 의심입니다.”<br/>- 프랭클린 D. 루즈벨트</div>
                
                <a href="cal.jsp"><div id="cal_exp_button_box">
                        <div id="cal_exp_button_bg"></div>
                        <div id="cal_exp_button_bar"></div>
                        <div id="cal_exp_button_text">Callender</div>
                        <!-- <img id="cal_enter_img" src="./img/Vector.jpg"/> -->
                    </div>
                </a>
        </nav>

        <!-- group exp -->
        <div id="group_exp">Group</div>
        <a href="group.jsp"><img id="gruop_exp_img" src="./img/그룹.jpg" /></a>
        <div id="group_exp_box"></div>
            <div id="group_exp_title">런닝메이트를 만들어 보세요</div>
            <div id="group_exp_subtitle">“혼자서는 우리는 아무 것도 못한다, <br/>함께 하면 우리는 그렇게 많은 것을 할 수 있다.” <br/>- 헬렌 켈러</div>
            <a href="group.jsp"><div id="group_exp_button_box">
                    <div id="group_exp_button_bg"></div>
                    <div id="group_exp_button_bar"></div>
                    <div id="gruop_exp_button_title">Group</div>
                </div>
            </a>
        <div class="up_button_box">
            <img class="up_button_img" src="./img/Feather Icon.png"></img>
        </div>
       
       
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
                            <div class="footer_mypageText">My Page</div>
                        </a>
        
                        <!-- sns icon -->
                        <a href="https://www.youtube.com"><img class="footer_snsbutton1" src="./img/youtube.png"></img></a>
                        <a href="https://www.kakao.com"><img class="footer_snsbutton2" src="./img/kakaotalk_black.png"></img></a>
                        <a href="https://www.instagram.com"><img class="footer_snsbutton3" src="./img/Instagram.png"></img></a>
                        <a href="https://www.facebook.com"><img class="footer_snsbutton4" src="./img/Facebook_black.png"></img></a>
                        <!-- 가상 네이버 주소 -->
                        <div style="width: 120px; height: 20px; left: 132px; top: 177px; position: absolute">
                            <div style="width: 120px; height: 20px; left: 0px; top: 0px; position: absolute; background: white"></div>
                            <div style="left: 0px; top: 2px; position: absolute; color: #797979; font-size: 15px; font-family: Pretendard-Regular; font-weight: 500; line-height: 15px; word-wrap: break-word">Ifive@naver.com</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer_bar"></div>
       

    <script>


    </script>
</body>
</html>