<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

        .box{
            width: 100%; 
            height: 100%;
            position: relative;
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
        .login_text{
            left: 3px; 
            top: 0px; 
            position: absolute; 
            color: black; 
            font-size: 14px; 
            font-family: Noto Sans KR; 
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
            font-family: Noto Sans KR; 
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
            font-family: Noto Sans KR; 
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
            font-family: Noto Sans KR; 
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
            font-family: Noto Sans KR; 
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

        .group_main_box{
            width: 241px; 
            height: 1092px; 
            left: 317px; 
            top: 100px; 
            position: fixed;
        }
        .sidebar{
            height: 100%;
            width: 0%;
            position: fixed;
            z-index: 2;
            top: 141px;
            left: 514px;
            overflow-x: hidden;
            transition: 0.3s;
            padding-top: 60px;
            padding-bottom: 60px;
        }


        .layer {
            width: 100%;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            background-color: rgba(0, 0, 0, 0.5); /* 반투명한 검은 배경 */
            display: none;
            z-index: 1;
        }



        .group_button{
            width: 172px; 
            height: 52px; 
            top: 112px; 
            left: 67px;
            cursor: pointer; 
            position: absolute;
        }
        .group_button_bg{
            width: 175px; 
            height: 52px; 
            left: -1px; 
            top: 0px; 
            cursor: pointer; 
            position: absolute; 
            background: white;
        }
       
        .group_button_bg:hover {
            background-color: rgba(155, 155, 155, 0.5);
        }
        
        .footer{
            position: fixed;
        }

        /* 채팅 타이핑란 */
        .typing_text{
            left: 74px; 
            top: 22px; 
            position: absolute; 
            color: #DBDBDB; 
            font-size: 14px; 
            font-family: Noto Sans KR; 
            font-weight: 500; 
            word-wrap: break-word;
        }
        .chatting_print_page{
            width: 866px; 
            height: 613px; 
            left: 215px; 
            top: 60px; 
            position: absolute; 
            background: #ECECEC;
        }
        #search_bar input[type="text"] {
        padding-left: 30px; /* 여기에 조절하고 싶은 값으로 변경하세요 (커서 위치를 뒤로 보내는 css)*/
    }
        .popup-wrapper{
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgb(0, 0, 0,0.5);
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .popup{
            width: 400px;
            height: 200px;
            background-color: #f0f0f0;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            position: relative;
        }
        .popup h2{
            margin-top: 0;
        }
        .popup button{
            position: absolute;
            top: 200px;
            right: 10px;
            background-color: #ccc;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        .button{
            width: 25px; height: 27px; left: 948px; top: 1107px; position: absolute
        }
        #buttonStyle{
            width: 50px; height: 50px; left: 6.25px; top: 10.12px; position: absolute; border: 2px #212121 solid
        }
        
    </style>
</head>
<body>
    <div class="box">
        <div class="header_box1">
            <div class="header_box2">
                <div class="header_bg"></div>
               
                <a class="header_mypage" href="mypage.html" role="button">
                    <div class="header_mypage_bg"></div>
                    <div class="header_mypage_text">Mypage</div>
                </a>

                <a class="header_callender" href="callender.html" role="button">
                    <div class="header_callender_bg"></div>
                    <div class="header_callender_text">Callender</div>
                </a>
                <a class="header_group" href="group_offer.html" role="button">
                    <div class="header_group_bg"></div>
                    <div class="header_group_text">Group</div>
                </a>
                <a class="team_title" href="main.html" role="button">
                    <div class="team_title_bg"></div>
                    <div class="team_title_text">IFIVE</div>
                </a>
            </div>
            <div class="header_bar"></div>
            <a class="login_button" href="login_pop.html" role="button">
                <div class="login_button_bg"></div>
                <div class="login_button_textBox">
                    <div class="login_button_textBg"></div>
                    <div class="login_button_img"></div>
                    <div class="login_textBox">
                        <div class="login_textBg"></div>
                        <div class="login_text">Login</div>
                    </div>
                </div>
            </a>
        </div>
    </div>
   
     <!-- group -->
     <div class="group_main_box">
        <div style="width: 198px; height: 1092px; left: 43px; top: 0px; position: absolute; background: rgba(255, 255, 255, 0.70);"></div>
        <div style="width: 196px; height: 1px; left: 44px; top: 111px; position: absolute; background: #DBDBDB"></div>
        <div style="left: 48px; top: 71px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">Group</div>
        
        <div class="group_button" onclick="openNav()">
            <div class="group_button_bg"></div>
            <div style="width: 30px; height: 30px; left: 6px; top: 12px; position: absolute; background: #D9D9D9; border-radius: 9999px"></div>
            <div style="width: 172px; height: 1px; left: 1px; top: 51px; position: absolute; background: #D9D9D9"></div>
            <div style="left: 41px; top: 24px; position: absolute; color: black; font-size: 13px; font-family: Inter; font-weight: 400; word-wrap: break-word">group1</div>            
        </div>

        <div style="width: 172px; height: 52px; left: 67px; top: 164px; position: absolute; background: white">
            <div style="width: 172px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 30px; height: 30px; left: 6px; top: 12px; position: absolute; background: #FF6B6B; border-radius: 9999px"></div>
            <div style="width: 172px; height: 1px; left: 1px; top: 51px; position: absolute; background: #D9D9D9"></div>
            <div style="left: 41px; top: 24px; position: absolute; color: black; font-size: 13px; font-family: Inter; font-weight: 400; word-wrap: break-word">group2</div>
        
        </div>
            
        <div style="width: 172px; height: 52px; left: 67px; top: 216px; position: absolute; background: white">
            <div style="width: 172px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 30px; height: 30px; left: 6px; top: 12px; position: absolute; background: #0B5FFD; border-radius: 9999px"></div>
            <div style="width: 172px; height: 1px; left: 1px; top: 51px; position: absolute; background: #D9D9D9"></div>
            <div style="left: 41px; top: 24px; position: absolute; color: black; font-size: 13px; font-family: Inter; font-weight: 400; word-wrap: break-word">group3</div>
        </div>
        
        
        <div style="width: 172px; height: 52px; left: 67px; top: 268px; position: absolute; background: white">
            <div style="width: 172px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 30px; height: 30px; left: 6px; top: 12px; position: absolute; background: #FBBC05; border-radius: 9999px"></div>
            <div style="width: 172px; height: 1px; left: 1px; top: 51px; position: absolute; background: #D9D9D9"></div>
            <div style="left: 41px; top: 24px; position: absolute; color: black; font-size: 13px; font-family: Inter; font-weight: 400; word-wrap: break-word">group4</div>
        </div>
        <div style="width: 14px; height: 11.04px; left: 215px; top: 85.11px; position: absolute; background: black"></div>
        
        <!-- backbutton -->
        <!-- <a href="javascript:void(0)" class="close-btn" onclick="closeNav()">
            <div style="width: 10px; height: 5px; left: 5px; top: 7.50px; position: absolute; border: 2px #212121 solid"></div>
        </a> -->
    </div>

    <!-- person & chat -->
    <div id="sidebar" class="sidebar" >
        <div style="width: 1082px; height: 731px; left: 47px; top: 0px; position: absolute">
            <div style="width: 1082px; height: 731px; left: 0px; top: 0px; position: absolute; background: #ECECEC; border: 1px #DBDBDB solid"></div>
            <div style="width: 865px; height: 59px; left: 215px; top: 1px; position: absolute; background: white"></div>
            <!-- 채팅 출력창 -->
            <div class="chatting_print_page"></div>
            <div style="width: 250px; height: 59px; left: 831px; top: 1px; position: absolute; background: white"></div>
            <div style="width: 205px; height: 29px; left: 831px; top: 16px; position: absolute; background: #F1F1F5; border-radius: 30px"></div>
            <div style="width: 14px; height: 14px; left: 1012px; top: 24px; position: absolute; background: #DBDBDB"></div>
            <div style="width: 865px; height: 1px; left: 215px; top: 60px; position: absolute; background: #DBDBDB"></div>
            <div style="width: 142px; height: 59px; left: 215px; top: 1px; position: absolute; background: #F7F7F7"></div>
            <div style="width: 71px; height: 59px; left: 215px; top: 1px; position: absolute; background: white"></div>
            <div style="width: 71px; height: 59px; left: 286px; top: 1px; position: absolute; background: white"></div>
            <div style="left: 286px; top: 29px; position: absolute; color: black; font-size: 15px; font-family: Inter; font-weight: 400; word-wrap: break-word">Group1</div>
            <div style="width: 215px; height: 731px; left: 0px; top: 0px; position: absolute; background: white; border: 1px #DBDBDB solid"></div>
            <div style="width: 213px; height: 59px; left: 1px; top: 1px; position: absolute; background: #F7F7F7"></div>
            <div style="width: 105px; height: 59px; left: 109px; top: 1px; position: absolute">
                <div style="width: 105px; height: 59px; left: 0px; top: 0px; position: absolute; background: #F7F7F7"></div>
                <div style="width: 14px; height: 14px; left: 71px; top: 23px; position: absolute; background: #DBDBDB"></div>
            </div>
            <div style="width: 213px; height: 1px; left: 1px; top: 60px; position: absolute; background: #DBDBDB"></div>
            <div style="width: 105px; height: 59px; left: 1px; top: 1px; position: absolute">
                <div style="width: 105px; height: 59px; left: 0px; top: 0px; position: absolute; background: #F7F7F7"></div>
                <div style="left: 19px; top: 18px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">Person</div>
            </div>
            <div style="width: 213px; height: 52px; left: 1px; top: 61px; position: absolute">
                <div style="width: 213px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 205px; height: 29px; left: 4px; top: 12px; position: absolute; background: #F1F1F5; border-radius: 30px"></div>
                <div style="width: 14px; height: 14px; left: 179px; top: 20px; position: absolute; background: #DBDBDB"></div>
            </div>
            <div style="width: 213px; height: 53px; left: 1px; top: 113px; position: absolute">
                <div style="width: 180px; height: 1px; left: 33px; top: 52px; position: absolute; background: #DBDBDB"></div>
                <div style="width: 213px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 135.91px; height: 21.15px; left: 68.54px; top: 15.87px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">Person</div>
                <div style="width: 34px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 30px; height: 30px; left: 34px; top: 11px; position: absolute; background: #FEE292; border-radius: 9999px"></div>
            </div>
            <div style="width: 213px; height: 53px; left: 1px; top: 166px; position: absolute">
                <div style="width: 180px; height: 1px; left: 33px; top: 52px; position: absolute; background: #DBDBDB"></div>
                <div style="width: 34px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 213px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 135.91px; height: 21.15px; left: 68.54px; top: 15.87px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">Person</div>
                <div style="width: 30px; height: 30px; left: 34px; top: 11px; position: absolute; background: #FF6B6B; border-radius: 9999px"></div>
            </div>
            <div style="width: 213px; height: 53px; left: 1px; top: 219px; position: absolute">
                <div style="width: 180px; height: 1px; left: 33px; top: 52px; position: absolute; background: #DBDBDB"></div>
                <div style="width: 34px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 213px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 135.91px; height: 21.15px; left: 68.54px; top: 15.87px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">Person</div>
                <div style="width: 30px; height: 30px; left: 34px; top: 11px; position: absolute; background: #E8CBCB; border-radius: 9999px"></div>
            </div>
            <div style="width: 30px; height: 30px; left: 250px; top: 16px; position: absolute; background: #D9D9D9; border-radius: 9999px"></div>
        </div>
        <div style="width: 213px; height: 59px; left: 50px; top: 671px; position: absolute">
            <div style="width: 213px; height: 59px; left: 0px; top: 0px; position: absolute; background: #F7F7F7"></div>
            <div style="width: 40px; height: 40px; left: 16px; top: 10px; position: absolute; background: #FEE292; border-radius: 9999px"></div>
            <div style="left: 62px; top: 24px; position: absolute; color: black; font-size: 20px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">me</div>
        </div>
        <!-- 타이핑란 -->
        <div style="width: 865px; height: 59px; left: 265px; top: 672px; position: absolute">
            <div style="width: 865px; height: 59px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 748px; height: 29px; left: 58px; top: 17px; position: absolute; background: #EEEEF5; border-radius: 30px"></div>
            <div style="width: 14px; height: 14px; left: 11px; top: 23px; position: absolute; background: #D9D9D9"></div>
            <div style="width: 14px; height: 14px; left: 34px; top: 23px; position: absolute; background: #D9D9D9"></div>
            <div style="width: 13px; height: 14px; left: 784px; top: 23px; position: absolute; background: #D9D9D9"></div>
            <div class="typing_text">Message</div>
        </div>
    </div>





        <div style="width: 798px; height: 1092px; left: 561px; top: 100px; position: absolute">
            <div style="width: 797px; height: 1092px; left: 0px; top: 0px; position: absolute; background: #F6CFCF"></div>
            <div style="width: 1px; height: 1092px; left: -1px; top: 0px; position: absolute; background: #DBDBDB"></div>
            <div style="width: 1px; height: 1092px; left: 797px; top: 0px; position: absolute; background: #DBDBDB"></div>
            <div style="width: 797px; height: 194px; left: 0px; top: 0px; position: absolute">
                <div style="width: 797px; height: 194px; left: 0px; top: 0px; position: absolute">
                    <div style="width: 797px; height: 194px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="width: 797px; height: 30px; left: 0px; top: 50px; position: absolute; background: white"></div>
                    <div style="width: 72px; height: 30px; left: 50px; top: 50px; position: absolute">
                        <div style="width: 72px; height: 30px; left: 0px; top: 0px; position: absolute; background: white"></div>
                        <div style="left: 0px; top: 0px; position: absolute; color: black; font-size: 25px; font-family: Inter; font-weight: 700; word-wrap: break-word">Board</div>
                    </div>
                </div>
                <div style="width: 797px; height: 48px; left: 0px; top: 120px; position: absolute">
                    <div style="width: 797px; height: 48px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="width: 513px; height: 44px; left: 224px; top: 2px; position: absolute">
                        <div id="search_bar" style="width: 513px; height: 44px; left: 0px; top: 0px; position: absolute; background: #F1F1F1; border-radius: 30px"></div>
                        <div style="width: 24px; height: 24px; left: 469px; top: 10px; position: absolute; background: #E2ACAC"></div>
                    </div>
                </div>
            </div>
            <div style="width: 797px; height: 898px; left: 0px; top: 194px; position: absolute">
                <div style="width: 797px; height: 898px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 682px; height: 52px; left: 57px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 682px; height: 1px; left: 57px; top: 51px; position: absolute; background: #DBDBDB"></div>
                <div onclick="openPopup()" style="left: 105px; top: 12px; position: absolute; color: black; font-size: 15px; font-family: Inter; font-weight: 400; word-wrap: break-word">그룹 소개 타이틀!</div>
                <div style="width: 30px; height: 30px; left: 67px; top: 11px; position: absolute; background: #D9D9D9; border-radius: 9999px"></div>
            </div>
        </div>
        <div style="width: 240px; height: 1092px; left: 1360px; top: 100px; position: absolute">
            <div style="width: 240px; height: 1092px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 240px; height: 215px; left: 0px; top: 877px; position: absolute">
                <div style="width: 240px; height: 215px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 240px; height: 123px; left: 0px; top: 30px; position: absolute">
                    <div style="width: 240px; height: 28px; left: 0px; top: 60px; position: absolute">
                        <div style="width: 240px; height: 28px; left: 0px; top: 0px; position: absolute; background: white"></div>
                        <div style="left: 10px; top: 1px; position: absolute; color: black; font-size: 18px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">Ifive@naver.com</div>
                    </div>
                    <div style="width: 240px; height: 15px; left: 0px; top: 108px; position: absolute">
                        <div style="width: 240px; height: 15px; left: 0px; top: 0px; position: absolute; background: white"></div>
                        <div style="width: 139px; height: 14px; left: 10px; top: 1px; position: absolute">
                            <div style="left: 0px; top: 0px; position: absolute; color: black; font-size: 12px; font-family: Roboto; font-weight: 500; word-wrap: break-word">운영시간:평일</div>
                            <div style="left: 80px; top: 0px; position: absolute; color: black; font-size: 12px; font-family: Roboto; font-weight: 500; word-wrap: break-word">09:00~18:00</div>
                        </div>
                    </div>
                    <div style="width: 240px; height: 30px; left: 0px; top: 0px; position: absolute">
                        <div style="width: 240px; height: 30px; left: 0px; top: 0px; position: absolute; background: white"></div>
                        <div style="left: 10px; top: 2px; position: absolute; color: black; font-size: 18px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">Q&A</div>
                    </div>
                    <div style="width: 240px; height: 1px; left: 0px; top: 39px; position: absolute; background: #DBDBDB"></div>
                </div>
            </div>
            <div style="width: 240px; height: 336px; left: 0px; top: 531px; position: absolute">
                <div style="width: 240px; height: 22px; left: 0px; top: 270px; position: absolute">
                    <div style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="left: 10px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">고무나라</div>
                </div>
                <div style="width: 240px; height: 22px; left: 0px; top: 292px; position: absolute">
                    <div style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="left: 10px; top: 0px; position: absolute; color: #505050; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">근력 유도밴드 3cm</div>
                </div>
                <div style="width: 240px; height: 22px; left: 0px; top: 314px; position: absolute">
                    <div style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="width: 58px; height: 21px; left: 10px; top: 0px; position: absolute">
                        <div style="left: 40px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">원</div>
                        <div style="left: 8px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Roboto; font-weight: 500; word-wrap: break-word">5,200</div>
                    </div>
                </div>
                <div style="width: 240px; height: 292px; left: 0px; top: 0px; position: absolute; background: rgba(0, 0, 0, 0.03)"></div>
                <a href="http://gomunara.com/product/%EA%B3%A0%EB%AC%B4%EB%82%98%EB%9D%BC-%EA%B7%BC%EB%A0%A5%EB%B0%B4%EB%93%9C-3cm/66/category/33/display/1/"><div style="width: 240px; height: 240px; left: 0px; top: 30px; position: absolute; background: #DBDBDB"><img src="https://image1.coupangcdn.com/image/vendor_inventory/c815/e925c1a6de43d437702b41ca7b509aae96570ffc92e81990905d5b9c2bf6.jpg" width="240px" height="240px"></div></a>
            </div>
            <div style="width: 240px; height: 336px; left: 0px; top: 185px; position: absolute">
                <div style="width: 240px; height: 22px; left: 0px; top: 270px; position: absolute">
                    <div style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="left: 10px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">바르닭</div>
                </div>
                <div style="width: 240px; height: 22px; left: 0px; top: 292px; position: absolute">
                    <div style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="left: 10px; top: 0px; position: absolute; color: #505050; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">[바르닭] 소스품은 닭가슴살</div>
                </div>
                <div style="width: 240px; height: 22px; left: 0px; top: 314px; position: absolute">
                    <div style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="width: 58px; height: 21px; left: 10px; top: 1px; position: absolute">
                        <div style="left: 8px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Roboto; font-weight: 500; word-wrap: break-word">2,900</div>
                        <div style="left: 45px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">원</div>
                    </div>
                </div>
                <div style="width: 240px; height: 292px; left: 0px; top: 0px; position: absolute; background: rgba(0, 0, 0, 0.03)"></div>
                <a href="https://mall.drdiary.co.kr/goods/goods_view.php?goodsNo=1000002278&utm_term=&gad_source=1&gclid=CjwKCAjwrIixBhBbEiwACEqDJdEPx-MxyixC9IJQqZa83Toe0ezkSHy0lfaclmHzDv-5y_knzVqpgRoC-hYQAvD_BwE"><div style="width: 240px; height: 240px; left: 0px; top: 30px; position: absolute; background: #DBDBDB"><img src="https://godomall.speedycdn.net/9e886df8f0ec5d2f44f612f355605e0b/goods/1000002278/image/detail/1000002278_detail_019.jpg" width="240px" height="240px"></div></a>
            </div>
            <div style="width: 240px; height: 95px; left: 0px; top: 65px; position: absolute">
                <div style="width: 240px; height: 95px; left: 0px; top: 0px; position: absolute; background: white; border-radius: 5px"></div>
                <div style="width: 240px; height: 20px; left: 0px; top: 35px; position: absolute">
                    <div style="width: 240px; height: 20px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="left: 10px; top: 0px; position: absolute; color: #505050; font-size: 13px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">게시글에 욕설은 삼가해주세요.</div>
                </div>
                <div style="width: 240px; height: 25px; left: 0px; top: 10px; position: absolute">
                    <div style="width: 240px; height: 25px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="width: 78px; height: 22px; left: 10px; top: 2px; position: absolute">
                        <div style="width: 20px; height: 20px; left: 58px; top: 1px; position: absolute; background: #D9D9D9"></div>
                        <div style="left: 0px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">공지사항</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="button" >
        <div><button id="buttonStyle" onclick="scrollToTop()"></button></div>
    </div>

    <div class="layer"></div>
    

    <script>   
        document.addEventListener("DOMContentLoaded", function() { // 검색창 커서 기능
        var searchInput = document.getElementById("search_bar");
        searchInput.addEventListener("click", function() {
         var inputField = document.createElement("input");
         inputField.setAttribute("type", "text");
         inputField.setAttribute("style", "width: 100%; height: 100%; border: none; outline: none; background: transparent;");
        //  inputField.setAttribute("placeholder", "검색어를 입력하세요");
         inputField.focus();
         this.appendChild(inputField);
        });
    });

    function openPopup() {
      // 팝업 창의 내용과 스타일을 설정
      var popupContent = "<div class='popup'><h2>같이 운동해요!</h2> <button onclick='closePopup()'>닫기</button> <p>그룹명 : </p> <p>그룹인원 : </p> </div>";
      
      
      // 팝업 창 요소 생성
      var popupWrapper = document.createElement("div");
      popupWrapper.classList.add("popup-wrapper");
      popupWrapper.innerHTML=popupContent;

      // 팝업 창을 body에 추가
      document.body.appendChild(popupWrapper);
    } 

    function closePopup() {
        var popupWrapper= document.querySelector(".popup-wrapper");
        popupWrapper.parentNode.removeChild(popupWrapper);
    }





        function openNav() {
            document.getElementById("sidebar").style.width = "1250px";
            document.querySelector(".footer").style.display = "block"; // 푸터 보이기
    
        }
    
        function closeNav() {
            document.getElementById("sidebar").style.width = "0";
    
        }
    
    
        document.addEventListener('DOMContentLoaded', function() {
        const layer = document.querySelector('.layer');
        const groupButton = document.querySelector('.group_button');
    
        groupButton.addEventListener('click', function() {
            layer.style.display = 'block';
            openNav(); // 사이드바를 열기
        });
    
        layer.addEventListener('click', function() {
            layer.style.display = 'none';
            closeNav(); // 사이드바를 닫기
        });
        });
    
        // 버튼을 클릭하면 페이지 맨 위로 스크롤합니다.
        function scrollToTop() {
          window.scrollTo({
            top: 0,
            behavior: "smooth" // 부드럽게 스크롤
          });
        }
        </script>
</body>
</html>