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

    <style>
        /* profile */
        .profile_box{
            width: 150px; 
            height: 150px; 
            left: 59px; 
            top: 45px; 
            position: absolute;
        }
        .profile_box_bg{
            width: 150px; 
            height: 150px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }
        .profile{
            width: 147.69px; 
            height: 147.69px; 
            left: 0px; 
            top: 1.15px; 
            position: absolute; 
            background: #ECF1EE; 
            border-radius: 9999px;
        }
        .profile_img{
            width: 57.69px; 
            height: 57.69px; 
            left: 45px; 
            top: 46.15px; 
            position: absolute; 
            background: #D9D9D9;
        }

        /* point */
        .point_record{
            left: 0px; 
            top: 3px;
            position: absolute; 
            color: black; 
            font-size: 20px; 
            font-family: Roboto; 
            font-weight: 400; 
            word-wrap: break-word;
        }

        /* weight */
        .weight{
            width: 20.61px; 
            left: 31.45px; 
            top: 3px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Roboto; 
            font-weight: 500; 
            word-wrap: break-word;
        }

        /* height */
        .height{
            width: 74.43px; 
            height: 23px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC;
        }

        /* goal weight */
        .goal_weight{
            width: 20.61px; 
            left: 31.45px; 
            top: 3px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Roboto; 
            font-weight: 500; 
            word-wrap: break-word;
        }

        /* ID */
        .typing_ID{
            width: 288px; 
            left: 0px; 
            top: 1px; 
            position: absolute; 
            color: #DDDDDD; 
            font-size: 15px; 
            font-family: Inter; 
            font-weight: 400; 
            word-wrap: break-word;
        }

        /* PW */
        .typing_PW{
            width: 288px; 
            left: 0px; 
            top: 1px; 
            position: absolute; 
            color: #DDDDDD; 
            font-size: 15px; 
            font-family: Inter; 
            font-weight: 400; 
            word-wrap: break-word;
        }


        .about_me{
            width: 381.15px; 
            height: 67.50px; 
            left: 0px; 
            top: 3.75px; 
            position: absolute; 
            color: #797979; 
            font-size: 15px; 
            font-family: Inter; 
            font-weight: 400; 
            word-wrap: break-word;
        }

        .Update_button{
            width: 342px; 
            height: 58px; 
            left: 94px; 
            top: 770px; 
            position: absolute;
        }
    </style>
</head>
<body>
    <!-- header -->
        <div style="height: 91px; left: 0px; top: 0px; position: absolute">
            <div style="width: 1920px; height: 90px; left: 0px; top: 0px; position: absolute">
                <div style="width: 1920px; height: 1px; left: 0px; top: 89px; position: absolute; background: #DBDBDB"></div>
                <div style="width: 1920px; height: 90px; left: 0px; top: 0px; position: absolute">
                    <div style="width: 1920px; height: 90px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <a herf="Main.jsp"><div style="width: 84px; height: 34px; left: 320px; top: 23px; position: absolute; color: black; font-size: 28px; font-family: Noto Sans KR; font-weight: 700; letter-spacing: 2.80px; word-wrap: break-word">IFIVE</div></a>
                    <a href = "group.jsp"><div style="left: 789px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Group</div></a>
                    <a href = "cal.jsp"><div style="left: 880px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Callender</div></a>
                    <div style="left: 993px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Board</div>
                    <a href ="mypage.jsp"><div style="left: 1082px; top: 35px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 350; word-wrap: break-word">Mypage</div></a>
                    <div style="width: 112px; height: 35px; left: 1488px; top: 27px; position: absolute">
                        <% if (loginMember == null) { %>
        <!-- 로그인되지 않은 상태 -->
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
    <% } %>
            </div>
            <div style="width: 1920px; height: 1px; left: 0px; top: 90px; position: absolute; background: #D9D9D9"></div>
        </div>

        <!-- mypage 타이틀 -->
        <div style="width: 120px; height: 57px; left: 900px; top: 135px; position: absolute">
            <div style="width: 120px; height: 57px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="left: 3px; top: 8px; position: absolute; color: black; font-size: 28px; font-family: Noto Sans KR; font-weight: 700; word-wrap: break-word">My Page</div>
        </div>

        <!-- mypage창 box -->
        <div style="width: 530px; height: 868px; left: 694px; top: 242px; position: absolute">
            <div style="width: 530px; height: 868px; left: 0px; top: 0px; position: absolute; background: #FFFCFC; box-shadow: 20px 20px 4px rgba(0, 0, 0, 0.05); border-radius: 10px; border: 1px #F4F4F4 solid"></div>
            <div style="width: 528px; height: 635px; left: 1px; top: 233px; position: absolute; background: #FFFCFC"></div>
            
            <!-- profile -->
            <div class="profile_box">
                <div class="profile_box_bg"></div>
                <div class="profile"></div>
                <div class="profile_img"></div>
            </div>
		<form action="mypageService.do" method="post">
            <!-- point -->
            <div style="width: 175px; height: 60px; left: 59px; top: 233px; position: absolute">
                <div style="width: 175px; height: 60px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
                <div style="width: 45px; height: 25px; left: 2px; top: 1px; position: absolute">
                    <div style="width: 45px; height: 25px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="left: 0px; top: 0px; position: absolute; color: #797979; font-size: 17px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">Point</div>
                </div>
                <div style="width: 173px; height: 34px; left: 1px; top: 26px; position: absolute">
                    <div style="width: 173px; height: 34px; left: 0px; top: 0px; position: absolute; background: #F9F9F9; border-radius: 5px"></div>
                    <div style="width: 50px; height: 30px; left: 118px; top: 2px; position: absolute">
                        <div style="width: 50px; height: 30px; left: 0px; top: 0px; position: absolute; background: #F9F9F9"></div>
                        <div class="point_record" name = point>150</div><!-- db값 가져오기 -->
                        <div style="left: 38px; top: 2px; position: absolute; color: #797979; font-size: 18px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">P</div>
                    </div>
                </div>
            </div>
		
            <!-- 현재 몸무게 -->
		     <div style="width: 148.85px; height: 30px; left: 317px; top: 49px; position: absolute">
    <div style="width: 148.85px; height: 30px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
    <div style="width: 148.85px; height: 1px; left: 0px; top: 29px; position: absolute; background: #DBDBDB"></div>
    <div style="width: 74.43px; height: 23px; left: 74.43px; top: 4px; position: absolute">
        <div style="width: 74.43px; height: 23px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
        <input type="text" name="weight" class="weight_input" style="width: 50px; left: 0px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; border: none; outline: none;" value="<%=loginMember.getUser_weight() %>">
        <div style="width: 19.47px; left: 52.06px; top: 0px; position: absolute; color: #797979; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">kg</div>
    </div>
    <div style="width: 74.43px; height: 23px; left: 0px; top: 4px; position: absolute">
        <div style="width: 74.43px; height: 23px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
        <div style="width: 73.28px; left: 1.15px; top: -0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">현재 체중:</div>
    </div>
</div>


            <!-- 키 -->
			           <div style="width: 151.68px; height: 30px; left: 318.15px; top: 109px; position: absolute">
			    <div style="width: 148.85px; height: 30px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
			    <div style="width: 148.85px; height: 1px; left: 0px; top: 29px; position: absolute; background: #DBDBDB"></div>
			    <div style="width: 77.25px; height: 23px; left: 74.43px; top: 4px; position: absolute">
			        <input type="text" name ="height" class="height_input" style="width: 30px; left: 0px; top: 3px; position: absolute; color: black; font-size: 15px; font-family: Roboto; font-weight: 500; border: none; outline: none;" value="<%=loginMember.getUser_height() %>">
			        <div style="width: 25.19px; left: 52.06px; top: 0px; position: absolute; color: #797979; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">cm</div>
			    </div>
			    <div style="width: 74.43px; height: 23px; left: 0px; top: 4px; position: absolute">
			        <div style="width: 74.43px; height: 23px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
			        <div style="width: 21.76px; left: 46.67px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">키:</div>
			    </div>
			</div>

            <!-- 목표 체중 -->
	        <div style="width: 148.85px; height: 30px; left: 318.15px; top: 169px; position: absolute">
	    <div style="width: 148.85px; height: 30px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
	    <div style="width: 148.85px; height: 1px; left: 0px; top: 29px; position: absolute; background: #DBDBDB"></div>
	    <div style="width: 74.43px; height: 23px; left: 74.43px; top: 4px; position: absolute">
	        <div style="width: 74.43px; height: 23px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
	        <input type="text" name = "goal_weight" class="goal_weight_input" style="width: 40px; left: 0px; top: 3px; position: absolute; color: black; font-size: 15px; font-family: Roboto; font-weight: 500; border: none; outline: none;" value="<%=loginMember.getUser_target_weight() %>">
	        <div style="width: 19.47px; left: 52.06px; top: 0px; position: absolute; color: #797979; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">kg</div>
	    </div>
	    <div style="width: 74.43px; height: 23px; left: 0px; top: 4px; position: absolute">
	        <div style="width: 74.43px; height: 23px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
	        <div style="width: 73.28px; left: 1.15px; top: -0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">목표 체중:</div>
	    </div>
	</div>

            <!-- ID -->
            <div style="width: 405px; height: 80px; left: 59px; top: 323px; position: absolute">
                <div style="width: 405px; height: 80px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
                <div style="width: 22px; height: 22px; left: 6px; top: 0px; position: absolute">
                    <div style="width: 22px; height: 22px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
                    <div style="width: 15px; height: 21px; left: 4px; top: 0px; position: absolute; color: #797979; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">ID</div>
                </div>
                <div style="width: 404px; height: 56px; left: 0px; top: 24px; position: absolute">
                    <div style="width: 404px; height: 56px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
                    <div style="width: 404px; height: 1px; left: 0px; top: 55px; position: absolute; background: #DBDBDB"></div>
                    <div style="width: 384px; height: 20px; left: 10px; top: 18px; position: absolute">
                        <div style="width: 384px; height: 20px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
                        <div class="typing_ID"><%=loginMember.getUser_id()%></div>
                    </div>
                </div>
            </div>

            <!-- PW -->
            <div style="width: 405px; height: 80px; left: 59px; top: 443px; position: absolute">
                <div style="width: 405px; height: 80px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
                <div style="width: 27px; height: 22px; left: 6px; top: 0px; position: absolute">
                    <div style="width: 22px; height: 22px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
                    <div style="width: 23px; height: 21px; left: 4px; top: 0px; position: absolute; color: #797979; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">PW</div>
                </div>
                <div style="width: 404px; height: 56px; left: 0px; top: 24px; position: absolute">
                    <div style="width: 404px; height: 56px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
                    <div style="width: 404px; height: 1px; left: 0px; top: 55px; position: absolute; background: #DBDBDB"></div>
                    <div style="width: 384px; height: 20px; left: 10px; top: 18px; position: absolute">
                        <div style="width: 384px; height: 20px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
                        <div class="typing_PW">***</div>
                    </div>
                </div>
            </div>

            <!-- 자기소개 -->
		          <div style="width: 405px; height: 147px; left: 59px; top: 563px; position: absolute">
		    <div style="width: 405px; height: 31px; left: 0px; top: 0px; position: absolute">
		        <div style="width: 404px; height: 1px; left: 1px; top: 30px; position: absolute; background: #DBDBDB"></div>
		        <div style="width: 405px; height: 30px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
		        <div style="width: 390px; height: 25px; left: 7px; top: 2px; position: absolute">
		            <div style="width: 390px; height: 25px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
		            <div style="width: 355px; left: 2px; top: 2px; position: absolute; color: #797979; font-size: 18px; font-family: Inter; font-weight: 400; word-wrap: break-word">About Me</div>
		        </div>
		    </div>
		    <div style="width: 404px; height: 96px; left: 1px; top: 51px; position: absolute">
		        <div style="width: 404px; height: 96px; left: 0px; top: 0px; position: absolute; background: #FFFCFC; border-radius: 5px; border: 1px #DBDBDB solid"></div>
		        <div style="width: 385px; height: 75px; left: 10px; top: 10px; position: absolute">
		            <div style="width: 385px; height: 75px; left: 0px; top: 0px; position: absolute; background: #FFFCFC"></div>
		            <textarea class="about_me_text" name = "me_text" style="width: 100%; height: 100%; resize: none; border: none; outline: none; padding: 5px; font-size: 16px; font-family: Inter;" placeholder="Introduction..."></textarea>
		        </div>
		    </div>
		</div>
		

            <!-- Update 버튼 -->
				         <div class="Update_button">
				    <div style="width: 342px; height: 58px; left: 0px; top: 0px; position: absolute; background: #CEC1C1"></div>
				    <input type="submit" style="width: 70px; height: 30px; left: 136px; top: 14px; position: absolute; background: #CEC1C1; border: none; outline: none; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; cursor: pointer;" value="Update">
				</div>

            </div>
        </div>
    </form>
        <!-- footer -->
        <div style="height: 253px; left: 0px; top: 1244px; position: absolute">
            <div style="width: 1920px; height: 252px; left: 1px; top: 1px; position: absolute">
                <div style="width: 1920px; height: 1px; left: 0px; top: 2px; position: absolute; background: #DBDBDB"></div>
                <div style="width: 1920px; height: 252px; left: 0px; top: 0px; position: absolute">
                    <div style="width: 1920px; height: 252px; left: 0px; top: 0px; position: absolute; background: white"></div>
                    <div style="left: 751px; top: 56px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Group</div>
                    <div style="left: 1095px; top: 57px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">My page</div>
                    <div style="left: 835px; top: 56px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Callender</div>
                    <div style="left: 1017px; top: 57px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Point</div>
                    <div style="left: 943px; top: 57px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Chat</div>
                    <div style="left: 902px; top: 180px; position: absolute; color: #797979; font-size: 15px; font-family: Noto Sans KR; font-weight: 350; line-height: 15px; word-wrap: break-word">Ifive@naver.com</div>
                    <div style="width: 35px; height: 27.68px; left: 792px; top: 113px; position: absolute">
                        <div style="width: 35px; height: 27.68px; left: 0px; top: 0px; position: absolute; background: #C4C4C4"></div>
                        <div style="width: 35px; height: 27.68px; left: 0px; top: 0px; position: absolute; background: #C4C4C4; border-radius: 9999px"></div>
                        <img style="width: 35px; height: 27.68px; left: 0px; top: 0px; position: absolute" src="https://via.placeholder.com/35x28" />
                    </div>
                    <div style="width: 35px; height: 27.68px; left: 893px; top: 113px; position: absolute">
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
                    <div style="width: 35px; height: 27.68px; left: 992px; top: 113px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
                        <img style="width: 35px; height: 27.68px" src="https://via.placeholder.com/35x28" />
                    </div>
                    <div style="width: 35px; height: 27.68px; left: 1091px; top: 113px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
                        <img style="width: 35px; height: 27.68px" src="https://via.placeholder.com/35x28" />
                    </div>
                </div>
            </div>
            <div style="width: 1920px; height: 1px; left: 0px; top: 0px; position: absolute; background: #D9D9D9"></div>
        </div>
    </div>
</body>
</html>