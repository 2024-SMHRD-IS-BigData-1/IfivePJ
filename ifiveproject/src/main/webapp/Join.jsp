<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
    <style>
        .join_box{
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            font-size: 100%;
            box-sizing: border-box;
            font-family: 'noto sans kr', sans-serif;
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
        #input_id {
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
            font-size: 15px;
            border-radius: 5px; 
            margin-top: 10px;
            border: none;  
            position: absolute; 
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
    </style>
<body>
    <div style="width: 100%; height: 100%; position: relative; background: white">
    
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
        
        
        
    </form>
    
    
    <!-- <div style="left: 1063px; top: 329px; position: absolute; color: #746F6F; font-size: 12px; font-family: Inter; font-weight: 400; word-wrap: break-word">중복체크</div> -->

      
        
        
        
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
        <div style="width: 157px; height: 1px; left: 789px; top: 897px; position: absolute; background: #DBDBDB"></div>
        <div style="width: 157px; height: 1px; left: 978px; top: 898px; position: absolute; background: #DBDBDB"></div>
        <div style="left: 952px; top: 884px; position: absolute; color: #767676; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; letter-spacing: 1.50px; word-wrap: break-word">or</div>
        <div style="width: 342px; height: 35px; left: 789px; top: 933px; position: absolute; background: white; border: 1px black solid"></div>
        <div style="width: 342px; height: 35px; left: 789px; top: 985px; position: absolute; background: white; border: 1px black solid"></div>
        <div style="width: 342px; height: 35px; left: 789px; top: 1042px; position: absolute; background: white; border: 1px black solid"></div>
        <div style="left: 879px; top: 938px; position: absolute; color: #B6ADAD; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; letter-spacing: 1.50px; word-wrap: break-word">구글 계정으로 가입하기</div>
        <div style="left: 872px; top: 990px; position: absolute; color: #B6ADAD; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; letter-spacing: 1.50px; word-wrap: break-word">네이버 계정으로 가입하기</div>
        <div style="left: 872px; top: 1047px; position: absolute; color: #B6ADAD; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; letter-spacing: 1.50px; word-wrap: break-word">카카오톡 계정으로 가입하기</div>
        <div style="width: 25px; height: 25px; padding-right: 0.50px; left: 841px; top: 938px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
            <div style="width: 24.50px; height: 25px; position: relative">
                <div style="width: 12px; height: 11.75px; left: 12.50px; top: 10.23px; position: absolute; background: #4285F4"></div>
                <div style="width: 19.43px; height: 10.12px; left: 1.34px; top: 14.88px; position: absolute; background: #34A853"></div>
                <div style="width: 5.50px; height: 11.20px; left: 0px; top: 6.90px; position: absolute; background: #FBBC05"></div>
                <div style="width: 19.52px; height: 10.13px; left: 1.34px; top: 0px; position: absolute; background: #EA4335"></div>
            </div>
        </div>
        <div style="width: 30px; height: 30px; left: 839px; top: 988px; position: absolute; background: white; border-radius: 9999px; overflow: hidden; justify-content: center; align-items: center; display: inline-flex">
            <div style="width: 20px; height: 20px; position: relative">
                <div style="width: 20px; height: 20px; left: 0px; top: 20px; position: absolute; background: #03C75A"></div>
            </div>
        </div>
        <div style="width: 25px; height: 25px; left: 841px; top: 1047px; position: absolute">
            <div style="width: 25px; height: 25px; left: 0px; top: 0px; position: absolute; background: #FEE500; border-radius: 9999px"></div>
            <div style="width: 14.06px; height: 13px; left: 5.51px; top: 6.03px; position: absolute">
                <div style="width: 14.06px; height: 13px; left: 0px; top: 0px; position: absolute; background: #392020"></div>
                <div style="width: 3.15px; height: 3.77px; left: 1.28px; top: 3.96px; position: absolute; background: #FEE500"></div>
                <div style="width: 3.22px; height: 3.84px; left: 3.52px; top: 3.90px; position: absolute; background: #FEE500"></div>
                <div style="width: 2.59px; height: 3.78px; left: 6.85px; top: 3.90px; position: absolute; background: #FEE500"></div>
                <div style="width: 2.97px; height: 3.81px; left: 9.50px; top: 3.90px; position: absolute; background: #FEE500"></div>
            </div>
        </div>
        <div style="left: 904px; top: 134px; position: absolute; color: black; font-size: 28px; font-family: Noto Sans KR; font-weight: 500; letter-spacing: 2.80px; word-wrap: break-word">회원가입</div>
        <div style="width: 1920px; height: 256px; left: 0px; top: 1382px; position: absolute">
            <div style="width: 1920px; height: 256px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 1920px; height: 1.02px; left: -0px; top: 2.03px; position: absolute; background: #DBDBDB"></div>
            <div style="width: 48px; height: 16.25px; left: 751px; top: 56.89px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Group</div>
            <div style="width: 63px; height: 16.25px; left: 1095px; top: 57.91px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">My page</div>
            <div style="width: 74px; height: 16.25px; left: 835px; top: 56.89px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Callender</div>
            <div style="width: 41px; height: 16.25px; left: 1017px; top: 57.91px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Point</div>
            <div style="width: 36px; height: 16.25px; left: 943px; top: 57.91px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Chat</div>
            <div style="width: 115px; height: 15.24px; left: 902px; top: 182.86px; position: absolute; color: #797979; font-size: 15px; font-family: Noto Sans KR; font-weight: 350; line-height: 15px; word-wrap: break-word">Ifive@naver.com</div>
            <div style="width: 35px; height: 28.12px; left: 792px; top: 114.80px; position: absolute">
                <div style="width: 35px; height: 28.12px; left: 0px; top: 0px; position: absolute; background: #C4C4C4"></div>
                <div style="width: 35px; height: 28.12px; left: 0px; top: 0px; position: absolute; background: #C4C4C4; border-radius: 9999px"></div>
                <img style="width: 35px; height: 28.12px; left: 0px; top: 0px; position: absolute" src="https://via.placeholder.com/35x28" />
            </div>
            <div style="width: 35px; height: 28.12px; left: 893px; top: 114.80px; position: absolute">
                <div style="width: 35px; height: 28.12px; left: 0px; top: 0px; position: absolute; background: black; border-radius: 9999px"></div>
                <div style="width: 22.96px; height: 18.46px; left: 6.02px; top: 4.83px; position: absolute">
                    <div style="width: 18.05px; height: 14.50px; left: 2.73px; top: 1.69px; position: absolute; background: white"></div>
                    <div style="width: 22.96px; height: 18.46px; left: 0px; top: 0px; position: absolute; background: black"></div>
                </div>
                <div style="width: 20.78px; height: 16.70px; left: 7.11px; top: 5.71px; position: absolute">
                    <div style="width: 20.78px; height: 16.70px; left: 0px; top: 0px; position: absolute; background: black"></div>
                    <div style="width: 19.68px; height: 14.62px; left: 0.61px; top: 1.07px; position: absolute; background: white"></div>
                    <div style="width: 4.41px; height: 4.25px; left: 2.39px; top: 5.53px; position: absolute; background: black"></div>
                    <div style="width: 4.51px; height: 4.32px; left: 5.54px; top: 5.46px; position: absolute; background: black"></div>
                    <div style="width: 3.63px; height: 4.25px; left: 10.20px; top: 5.46px; position: absolute; background: black"></div>
                    <div style="width: 4.15px; height: 4.29px; left: 13.91px; top: 5.46px; position: absolute; background: black"></div>
                </div>
            </div>
            <div style="width: 35px; height: 28.12px; left: 992px; top: 114.80px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
                <img style="width: 35px; height: 28.12px" src="https://via.placeholder.com/35x28" />
            </div>
            <div style="width: 35px; height: 28.12px; left: 1091px; top: 114.80px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
                <img style="width: 35px; height: 28.12px" src="https://via.placeholder.com/35x28" />
            </div>
        </div>
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