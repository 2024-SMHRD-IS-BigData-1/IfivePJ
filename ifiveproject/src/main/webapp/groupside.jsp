<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        .group_main_box{
            width: 198px; 
            height: 731px; 
            left: 320px; 
            top: 141px; 
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
            left: 24px;
            cursor: pointer; 
            position: absolute;
        }
        .image{
            display: none;
            position: absolute;
            width: 10px; 
            height: 10px; 
            left: 150px; 
            top: 24px; 
            position: absolute; 
            background: #5C5C5C;
        }
        .group_button:hover + .image{
            display: block;
           
        }
        .close_btn{
            width: 20px; 
            height: 20px; 
            left: 9px; 
            top: 29px; 
            position: absolute; 
            transform: rotate(-90deg); 
            transform-origin: 0 0;
        }

        .footer{
            position: fixed;
            /* z-index: 2; */
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
        
    </style>

</head>
<body>

    <!-- group -->
    <div class="group_main_box">
        <div style="width: 198px; height: 731px; left: 0px; top: 0px; position: absolute; background: rgba(255, 255, 255, 0.70); border: 1px black solid"></div>
        <div style="width: 196px; height: 1px; left: 1px; top: 111px; position: absolute; background: #DBDBDB"></div>
        <div style="left: 15px; top: 71px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">Group</div>
        
        <div class="group_button" onclick="openNav()">
            <div style="width: 172px; height: 52px; left: 0px; top: 0px; cursor: pointer; position: absolute; background: white;"></div>
            <div style="width: 30px; height: 30px; left: 6px; top: 12px; position: absolute; background: #D9D9D9; border-radius: 9999px"></div>
            <div style="width: 172px; height: 1px; left: 1px; top: 51px; position: absolute; background: #D9D9D9"></div>
            <div style="left: 41px; top: 24px; position: absolute; color: black; font-size: 13px; font-family: Inter; font-weight: 400; word-wrap: break-word">group1</div>
            <!-- button_icon -->
            <img class="image">
        </div>

        <div style="width: 172px; height: 52px; left: 24px; top: 164px; position: absolute; background: white">
            <div style="width: 172px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 30px; height: 30px; left: 6px; top: 12px; position: absolute; background: #FF6B6B; border-radius: 9999px"></div>
            <div style="width: 172px; height: 1px; left: 1px; top: 51px; position: absolute; background: #D9D9D9"></div>
            <div style="left: 41px; top: 24px; position: absolute; color: black; font-size: 13px; font-family: Inter; font-weight: 400; word-wrap: break-word">group2</div>
        
        </div>
            
        <div style="width: 172px; height: 52px; left: 24px; top: 216px; position: absolute; background: white">
            <div style="width: 172px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 30px; height: 30px; left: 6px; top: 12px; position: absolute; background: #0B5FFD; border-radius: 9999px"></div>
            <div style="width: 172px; height: 1px; left: 1px; top: 51px; position: absolute; background: #D9D9D9"></div>
            <div style="left: 41px; top: 24px; position: absolute; color: black; font-size: 13px; font-family: Inter; font-weight: 400; word-wrap: break-word">group3</div>
        </div>
        
        
        <div style="width: 172px; height: 52px; left: 24px; top: 268px; position: absolute; background: white">
            <div style="width: 172px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 30px; height: 30px; left: 6px; top: 12px; position: absolute; background: #FBBC05; border-radius: 9999px"></div>
            <div style="width: 172px; height: 1px; left: 1px; top: 51px; position: absolute; background: #D9D9D9"></div>
            <div style="left: 41px; top: 24px; position: absolute; color: black; font-size: 13px; font-family: Inter; font-weight: 400; word-wrap: break-word">group4</div>
        </div>
        <div style="width: 14px; height: 11.04px; left: 172px; top: 85.11px; position: absolute; background: black"></div>
        
        <!-- backbutton -->
        <!-- <a href="javascript:void(0)" class="close-btn" onclick="closeNav()">
            <div style="width: 10px; height: 5px; left: 5px; top: 7.50px; position: absolute; border: 2px #212121 solid"></div>
        </a> -->
    </div>

    <!-- person & chat -->
    <div id="sidebar" class="sidebar" >
        <div style="width: 1082px; height: 731px; left: 0px; top: 0px; position: absolute">
            <div style="width: 1082px; height: 731px; left: 0px; top: 0px; position: absolute; background: #ECECEC; border: 1px black solid"></div>
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
            <div style="width: 215px; height: 731px; left: 0px; top: 0px; position: absolute; background: white; border: 1px black solid"></div>
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
        <div style="width: 213px; height: 59px; left: 1px; top: 671px; position: absolute">
            <div style="width: 213px; height: 59px; left: 0px; top: 0px; position: absolute; background: #F7F7F7"></div>
            <div style="width: 40px; height: 40px; left: 16px; top: 10px; position: absolute; background: #FEE292; border-radius: 9999px"></div>
            <div style="left: 62px; top: 24px; position: absolute; color: black; font-size: 20px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">me</div>
        </div>
        <!-- 타이핑란 -->
        <div style="width: 865px; height: 59px; left: 218px; top: 672px; position: absolute">
            <div style="width: 865px; height: 59px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 748px; height: 29px; left: 58px; top: 17px; position: absolute; background: #EEEEF5; border-radius: 30px"></div>
            <div style="width: 14px; height: 14px; left: 11px; top: 23px; position: absolute; background: #D9D9D9"></div>
            <div style="width: 14px; height: 14px; left: 34px; top: 23px; position: absolute; background: #D9D9D9"></div>
            <div style="width: 13px; height: 14px; left: 784px; top: 23px; position: absolute; background: #D9D9D9"></div>
            <div class="typing_text">Message</div>
        </div>
    </div>


    <!-- header -->
    <div class="header" style="width: 1920px; height: 0px; left: 0px; top: 0px; position: fixed">
        <div style="width: 1920px; height: 1px; left: 0px; top: 90px; position: absolute; background: #DBDBDB"></div>
        <div style="width: 1920px; height: 90px; left: 1px; top: 0px; position: absolute; background: white"></div>
        <div style="width: 84px; height: 34px; left: 321px; top: 23px; position: absolute; color: black; font-size: 28px; font-family: Noto Sans KR; font-weight: 700; letter-spacing: 2.80px; word-wrap: break-word">IFIVE</div>
        <div style="left: 790px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Group</div>
        <div style="left: 881px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Callender</div>
        <div style="left: 994px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Board</div>
        <div style="left: 1083px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Mypage</div>
        <div style="width: 112px; height: 35px; left: 1489px; top: 27px; position: absolute">
            <div style="width: 112px; height: 35px; left: 0px; top: 0px; position: absolute; background: white; border-radius: 30px; border: 1px #DBDBDB solid"></div>
            <div style="width: 70px; height: 22px; left: 21px; top: 7px; position: absolute">
                <div style="left: 34px; top: 1px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Login</div>
                <div style="width: 28px; height: 22px; left: 0px; top: 0px; position: absolute; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: inline-flex">
                    <div style="width: 28px; height: 22px"></div>
                    <div style="width: 18.67px; height: 14.67px; background: black"></div>
                </div>
            </div>
        </div>
    </div>

        <!-- footer -->
        <div class="footer" style="width: 1920px; height: 252px; left: 0px; top: 1042px; position: absolute">
            <div style="width: 1920px; height: 252px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 1920px; height: 1px; left: 0px; top: 2px; position: absolute; background: #DBDBDB"></div>
            <div style="left: 751px; top: 56px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Group</div>
            <div style="left: 1095px; top: 57px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">My page</div>
            <div style="left: 835px; top: 56px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Callender</div>
            <div style="left: 1017px; top: 57px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Point</div>
            <div style="left: 943px; top: 57px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Chat</div>
            <div style="left: 902px; top: 180px; position: absolute; color: #797979; font-size: 15px; font-family: Noto Sans KR; font-weight: 350; line-height: 15px; word-wrap: break-word">Ifive@naver.com</div>
            <div style="width: 35px; height: 35px; left: 791px; top: 109px; position: absolute">
                <div style="width: 35px; height: 35px; left: 0px; top: 0px; position: absolute; background: #C4C4C4"></div>
                <div style="width: 35px; height: 35px; left: 0px; top: 0px; position: absolute; background: #C4C4C4; border-radius: 9999px"></div>
                <img style="width: 35px; height: 35px; left: 0px; top: 0px; position: absolute" src="https://via.placeholder.com/35x35" />
            </div>
            <div style="width: 35px; height: 35px; left: 892px; top: 109px; position: absolute">
                <div style="width: 35px; height: 35px; left: 0px; top: 0px; position: absolute; background: black; border-radius: 9999px"></div>
                <div style="width: 22.96px; height: 22.98px; left: 6.02px; top: 6.02px; position: absolute">
                    <div style="width: 18.05px; height: 18.05px; left: 2.73px; top: 2.10px; position: absolute; background: white"></div>
                    <div style="width: 22.96px; height: 22.98px; left: 0px; top: 0px; position: absolute; background: black"></div>
                </div>
                <div style="width: 20.78px; height: 20.78px; left: 7.11px; top: 7.11px; position: absolute">
                    <div style="width: 20.78px; height: 20.78px; left: 0px; top: 0px; position: absolute; background: black"></div>
                    <div style="width: 19.68px; height: 18.20px; left: 0.61px; top: 1.34px; position: absolute; background: white"></div>
                    <div style="width: 4.41px; height: 5.28px; left: 2.39px; top: 6.89px; position: absolute; background: black"></div>
                    <div style="width: 4.51px; height: 5.38px; left: 5.54px; top: 6.79px; position: absolute; background: black"></div>
                    <div style="width: 3.63px; height: 5.29px; left: 10.20px; top: 6.79px; position: absolute; background: black"></div>
                    <div style="width: 4.15px; height: 5.34px; left: 13.91px; top: 6.80px; position: absolute; background: black"></div>
                </div>
            </div>
            <div style="width: 35px; height: 35px; left: 991px; top: 109px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
                <img style="width: 35px; height: 35px" src="https://via.placeholder.com/35x35" />
            </div>
            <div style="width: 35px; height: 35px; left: 1090px; top: 109px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
                <img style="width: 35px; height: 35px" src="https://via.placeholder.com/35x35" />
            </div>
        </div>

        <div class="layer"></div>
        
    </div>




    <script>   

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


    </script>
</body>
</html>