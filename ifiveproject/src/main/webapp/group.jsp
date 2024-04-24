<%@page import="com.smhrd.model.GroupDAO"%>
<%@page import="com.smhrd.model.Group"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%Member loginMember = (Member)session.getAttribute("loginMember"); %>
<!DOCTYPE html>
<html lang="en">
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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

        /* .group_main_box{
            width: 241px; 
            height: 1092px; 
            left: 317px; 
            top: 100px; 
            position: fixed;
        } */
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
        
        .group_main_box{
            width: 198px; 
            height: 731px; 
            left: 320px; 
            top: 141px; 
            position: fixed;
        }
        
        .group_button{
            width: 172px; 
            height: 52px; 
            /* top: 112px; */ 
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
        
        /* 그룹 생성 스타일 */
        #groupjoin {
          width: 14px;
          height: 14px;
          left: 172px;
          top: 85.11px;
          position: absolute;
          background: black;
          cursor: pointer; /* 커서를 손가락으로 바꿈 */
        }
      
        /* 팝업 스타일 */
        .popup {
          display: none; /* 기본적으로 숨김 */
          position: fixed;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          background-color: #fefefe;
          border: 1px solid #888;
          z-index: 1000; /* 다른 요소 위에 위치 */
          padding: 20px;
        }
      
        .popup-content {
          text-align: center;
        }
      
        .close_groupjoin {
          color: #aaa;
          float: right;
          font-size: 28px;
          font-weight: bold;
        }
      
        .close_groupjoin:hover,
        .close_groupjoin:focus {
          color: black;
          text-decoration: none;
          cursor: pointer;
        }
              
        /* 채팅 타이핑란 */
        .text-input {
            border: none;
            outline: none;
            background: transparent;
            width: 100px; /* 텍스트 입력 상자의 너비 */
            height: 20px; /* 텍스트 입력 상자의 높이 */
            left: calc(100% - 208px); /* 오른쪽 여백 조정 */
            top: 17px;
        }
        .chat-text-box {
            width: fit-content;
            padding: 10px; /* 내부 패딩 */
            margin: 5px 0; /* 상하 여백 */
            border: 1px solid black; /* 테두리 */
            border-radius: 5px; /* 테두리 둥글게 */
            background-color: #f0f0f0; /* 배경색 */
            text-align: right;
           position: relative;
           z-index: 15;
        }
        #chatbox{
           height: 600px;
          padding-top: 70px;
          padding-left: 220px;
          padding-right: 20px;
          margin-bottom: 10px;
          text-align: right;
        }
        .link {
          cursor: pointer;
        }
        
    </style>
    
</head>
<body>
    <!-- header -->
    <div class="box">
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
        <div style="width: 198px; height: 731px; left: 0px; top: 0px; position: absolute; background: rgba(255, 255, 255, 0.70); border: 1px black solid"></div>
        <div style="width: 196px; height: 1px; left: 1px; top: 111px; position: absolute; background: #DBDBDB"></div>
        <div style="left: 15px; top: 71px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">Group</div>
          
          <!-- 가입한 그룹 띄우기 -->                     
          <div class="group_button" style="top:120px;">
         <table>
             <%
             Member logiMember2Member = (Member) session.getAttribute("loginMember");
             List<Group> groupList = null;
             if (logiMember2Member != null) {
                groupList = new GroupDAO().groupList(logiMember2Member.getUser_id());
                 pageContext.setAttribute("groupList", groupList);
             }
             %>
             <c:forEach items="${groupList}" var="group" varStatus="s">
                  <tr>
                  <td>
                          <div class="group_button_bg"></div>
                    <div style="width: 30px; height: 30px; left: 6px; top:${s.index*60+12}px; position: absolute; background: #DBDBDB; border-radius: 9999px"></div>
                    <div style="width: 172px; height: 1px; left: 1px; top: ${s.index * 60 + 52}px; position: absolute; background: #D9D9D9"></div>
                          <div style="left: 41px; top: ${s.index * 60 + 24}px; position: absolute; color: black; font-size: 13px; font-family: Inter; font-weight: 400; word-wrap: break-word">
                              ${group.group_name}</div>
                </td>
               </tr>
             </c:forEach>
         </table>
      </div>
      
      <!-- 그룹 원 색상 변경 -->
      <!-- <script>
          function randomColor() {
              var letters = '0123456789ABCDEF';
              var color = '#';
              for (var i = 0; i < 6; i++) {
                  color += letters[Math.floor(Math.random() * 16)];
              }
              return color;
          }
      </script> -->

        
        <!-- 그룹 만들기 버튼 -->
		<div id=groupjoin
			style="width: 14px; height: 14px; left: 172px; top: 85.11px; position: absolute; background: black"></div>
		<div id="myPopup" class="popup">
			<span class="close_groupjoin" onclick="closePopup()">&times;</span>
			<div class="popup-content">
				<!-- 그룹 만들기 팝업창 -->
				<h5>그룹생성하기</h5>
				<form action="NewgroupService.do" method="post">
					<li><input type="text" name="group_name"
						placeholder="그룹명을 입력하세요"></li>
					<li><input type="text" name="group_info"
						placeholder="그룹소개를 입력하세요"></li>
					<li><input type="number" name="group_limit"
						placeholder="그룹 정원"></li> <input type="submit" value="그룹 생성">
				</form>
			</div>
		</div>

		<script>
			// 팝업 표시 함수
			function showPopup() {
				document.getElementById("myPopup").style.display = "block";
			}

			// 팝업 숨김 함수
			function closePopup() {
				document.getElementById("myPopup").style.display = "none";
			}

			// 요소 클릭 시 팝업 표시
			document.getElementById("groupjoin").addEventListener("click",
					function() {
						showPopup();
					});
		</script>
       
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
            <div id="chatbox" ></div>
            <div style="width: 250px; height: 59px; left: 831px; top: 1px; position: absolute; background: white"></div>
            <div style="width: 205px; height: 29px; left: 831px; top: 16px; position: absolute; background: #F1F1F5; border-radius: 30px"></div>
            <div style="width: 14px; height: 14px; left: 1012px; top: 24px; position: absolute; background: #DBDBDB"></div>
            <div style="width: 865px; height: 1px; left: 215px; top: 60px; position: absolute; background: #DBDBDB"></div>
            <div style="width: 142px; height: 59px; left: 215px; top: 1px; position: absolute; background: #F7F7F7"></div>
            <div style="width: 71px; height: 59px; left: 215px; top: 1px; position: absolute; background: white"></div>
            <div style="width: 71px; height: 59px; left: 286px; top: 1px; position: absolute; background: white"></div>
            <!-- 그룹이름 -->
            <div style="left: 286px; top: 29px; position: absolute; color: black; font-size: 15px; font-family: Inter; font-weight: 400; word-wrap: break-word">
               해당 그룹이름을 넣어야함</div>
            <div style="width: 215px; height: 731px; left: 0px; top: 0px; position: absolute; background: white; border: 1px black solid"></div>
            <div style="width: 213px; height: 59px; left: 1px; top: 1px; position: absolute; background: #F7F7F7"></div>
            <div style="width: 105px; height: 59px; left: 109px; top: 1px; position: absolute">
                <div style="width: 105px; height: 59px; left: 0px; top: 0px; position: absolute; background: #F7F7F7"></div>
                <div style="width: 14px; height: 14px; left: 71px; top: 23px; position: absolute; background: #DBDBDB"></div>
            </div>
            <div style="width: 213px; height: 1px; left: 1px; top: 60px; position: absolute; background: #DBDBDB"></div>
            <div style="width: 105px; height: 59px; left: 1px; top: 1px; position: absolute">
                <div style="width: 105px; height: 59px; left: 0px; top: 0px; position: absolute; background: #F7F7F7"></div>
                <div style="left: 19px; top: 18px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">
                   <%=logiMember2Member.getUser_id() %></div>
            </div>
            <div style="width: 213px; height: 52px; left: 1px; top: 61px; position: absolute">
                <div style="width: 213px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 205px; height: 29px; left: 4px; top: 12px; position: absolute; background: #F1F1F5; border-radius: 30px"></div>
                <div style="width: 14px; height: 14px; left: 179px; top: 20px; position: absolute; background: #DBDBDB"></div>
            </div>
            <div style="width: 213px; height: 53px; left: 1px; top: 113px; position: absolute">
                <div style="width: 180px; height: 1px; left: 33px; top: 52px; position: absolute; background: #DBDBDB"></div>
                <div style="width: 213px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 135.91px; height: 21.15px; left: 68.54px; top: 15.87px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">
                   그룹인원1</div>
                <div style="width: 34px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 30px; height: 30px; left: 34px; top: 11px; position: absolute; background: #FEE292; border-radius: 9999px"></div>
            </div>
            <div style="width: 213px; height: 53px; left: 1px; top: 166px; position: absolute">
                <div style="width: 180px; height: 1px; left: 33px; top: 52px; position: absolute; background: #DBDBDB"></div>
                <div style="width: 34px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 213px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 135.91px; height: 21.15px; left: 68.54px; top: 15.87px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">
                   그룹인원2</div>
                <div style="width: 30px; height: 30px; left: 34px; top: 11px; position: absolute; background: #FF6B6B; border-radius: 9999px"></div>
            </div>
            <div style="width: 213px; height: 53px; left: 1px; top: 219px; position: absolute">
                <div style="width: 180px; height: 1px; left: 33px; top: 52px; position: absolute; background: #DBDBDB"></div>
                <div style="width: 34px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 213px; height: 52px; left: 0px; top: 0px; position: absolute; background: white"></div>
                <div style="width: 135.91px; height: 21.15px; left: 68.54px; top: 15.87px; position: absolute; color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word">
                   그룹인원3</div>
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
            <div style="width: 748px; height: 29px; left: 58px; top: 17px; position: absolute; background: #EEEEF5; border-radius: 30px"
                contenteditable="true" id="message"  ></div>
            <div style="width: 14px; height: 14px; left: 11px; top: 23px; position: absolute; background: #D9D9D9"></div>
            <div style="width: 14px; height: 14px; left: 34px; top: 23px; position: absolute; background: #D9D9D9"></div>
            <div style="width: 13px; height: 14px; left: 760px; top: 23px; position: absolute; background: #D9D9D9"
               id="button" onclick="sendMessage()">
            </div>
        </div>
    </div>


        <!-- footer -->
        <div class="footer" style="width: 1920px; height: 252px; left: 0px; top: 1042px; position: absolute">
            <div style="width: 1920px; height: 252px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="width: 1920px; height: 1px; left: 0px; top: 2px; position: absolute; background: #DBDBDB"></div>
            <div style="left: 751px; top: 56px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">Group</div>
            <div style="left: 1095px; top: 57px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word">My page</div>
            <div style="left: 835px; top: 56px; position: absolute; color: black; font-size: 16px; font-family: Noto Sans KR; font-weight: 500; line-height: 16px; word-wrap: break-word";
               class="cal-link" onclick="location.href='cal.jsp'" >Callender</div>
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
		
		
		<!-- 중앙 -->
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
                <div id="groupIntroTitle"  style="left: 105px; top: 12px; position: absolute; color: black; font-size: 15px; font-family: Inter; font-weight: 400; word-wrap: break-word; cursor: pointer">그룹 소개 타이틀!</div>
                   
                <div style="width: 30px; height: 30px; left: 67px; top: 11px; position: absolute; background: #D9D9D9; border-radius: 9999px"></div>
            </div>
        </div>
		
		<!-- 오른쪽 사이드 -->
		<div
			style="width: 240px; height: 1092px; left: 1360px; top: 100px; position: absolute">
			<div
				style="width: 240px; height: 1092px; left: 0px; top: 0px; position: absolute; background: white"></div>
			<div
				style="width: 240px; height: 215px; left: 0px; top: 877px; position: absolute">
				<div
					style="width: 240px; height: 215px; left: 0px; top: 0px; position: absolute; background: white"></div>
				<div
					style="width: 240px; height: 123px; left: 0px; top: 30px; position: absolute">
					<div
						style="width: 240px; height: 28px; left: 0px; top: 60px; position: absolute">
						<div
							style="width: 240px; height: 28px; left: 0px; top: 0px; position: absolute; background: white"></div>
						<div
							style="left: 10px; top: 1px; position: absolute; color: black; font-size: 18px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">Ifive@naver.com</div>
					</div>
					<div
						style="width: 240px; height: 15px; left: 0px; top: 108px; position: absolute">
						<div
							style="width: 240px; height: 15px; left: 0px; top: 0px; position: absolute; background: white"></div>
						<div
							style="width: 139px; height: 14px; left: 10px; top: 1px; position: absolute">
							<div
								style="left: 0px; top: 0px; position: absolute; color: black; font-size: 12px; font-family: Roboto; font-weight: 500; word-wrap: break-word">운영시간:평일</div>
							<div
								style="left: 80px; top: 0px; position: absolute; color: black; font-size: 12px; font-family: Roboto; font-weight: 500; word-wrap: break-word">09:00~18:00</div>
						</div>
					</div>
					<div
						style="width: 240px; height: 30px; left: 0px; top: 0px; position: absolute">
						<div
							style="width: 240px; height: 30px; left: 0px; top: 0px; position: absolute; background: white"></div>
						<div
							style="left: 10px; top: 2px; position: absolute; color: black; font-size: 18px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">Q&A</div>
					</div>
					<div
						style="width: 240px; height: 1px; left: 0px; top: 39px; position: absolute; background: #DBDBDB"></div>
				</div>
			</div>
			<div
				style="width: 240px; height: 336px; left: 0px; top: 531px; position: absolute">
				<div
					style="width: 240px; height: 22px; left: 0px; top: 270px; position: absolute">
					<div
						style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
					<div
						style="left: 10px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">고무나라</div>
				</div>
				<div
					style="width: 240px; height: 22px; left: 0px; top: 292px; position: absolute">
					<div
						style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
					<div
						style="left: 10px; top: 0px; position: absolute; color: #505050; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">근력
						유도밴드 3cm</div>
				</div>
				<div
					style="width: 240px; height: 22px; left: 0px; top: 314px; position: absolute">
					<div
						style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
					<div
						style="width: 58px; height: 21px; left: 10px; top: 0px; position: absolute">
						<div
							style="left: 40px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">원</div>
						<div
							style="left: 0px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Roboto; font-weight: 500; word-wrap: break-word">5,200</div>
					</div>
				</div>
				<div
					style="width: 240px; height: 292px; left: 0px; top: 0px; position: absolute; background: rgba(0, 0, 0, 0.03)"></div>
				<a
					href="http://gomunara.com/product/%EA%B3%A0%EB%AC%B4%EB%82%98%EB%9D%BC-%EA%B7%BC%EB%A0%A5%EB%B0%B4%EB%93%9C-3cm/66/category/33/display/1/"><div
						style="width: 240px; height: 240px; left: 0px; top: 30px; position: absolute; background: #DBDBDB">
						<img
							src="https://image1.coupangcdn.com/image/vendor_inventory/c815/e925c1a6de43d437702b41ca7b509aae96570ffc92e81990905d5b9c2bf6.jpg"
							width="240px" height="240px">
					</div></a>
			</div>
			<div
				style="width: 240px; height: 336px; left: 0px; top: 185px; position: absolute">
				<div
					style="width: 240px; height: 22px; left: 0px; top: 270px; position: absolute">
					<div
						style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
					<div
						style="left: 10px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">바르닭</div>
				</div>
				<div
					style="width: 240px; height: 22px; left: 0px; top: 292px; position: absolute">
					<div
						style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
					<div
						style="left: 10px; top: 0px; position: absolute; color: #505050; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">[바르닭]
						소스품은 닭가슴살</div>
				</div>
				<div
					style="width: 240px; height: 22px; left: 0px; top: 314px; position: absolute">
					<div
						style="width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white"></div>
					<div
						style="width: 58px; height: 21px; left: 10px; top: 1px; position: absolute">
						<div
							style="left: 0px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Roboto; font-weight: 500; word-wrap: break-word">2,900</div>
						<div
							style="left: 45px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">원</div>
					</div>
				</div>
				<div
					style="width: 240px; height: 292px; left: 0px; top: 0px; position: absolute; background: rgba(0, 0, 0, 0.03)"></div>
				<a
					href="https://mall.drdiary.co.kr/goods/goods_view.php?goodsNo=1000002278&utm_term=&gad_source=1&gclid=CjwKCAjwrIixBhBbEiwACEqDJdEPx-MxyixC9IJQqZa83Toe0ezkSHy0lfaclmHzDv-5y_knzVqpgRoC-hYQAvD_BwE"><div
						style="width: 240px; height: 240px; left: 0px; top: 30px; position: absolute; background: #DBDBDB">
						<img
							src="https://godomall.speedycdn.net/9e886df8f0ec5d2f44f612f355605e0b/goods/1000002278/image/detail/1000002278_detail_019.jpg"
							width="240px" height="240px">
					</div></a>
			</div>
			<div
				style="width: 240px; height: 95px; left: 0px; top: 65px; position: absolute">
				<div
					style="width: 240px; height: 95px; left: 0px; top: 0px; position: absolute; background: #EFE9E9; border-radius: 5px"></div>
				<div
					style="width: 240px; height: 20px; left: 0px; top: 35px; position: absolute">
					<div
						style="width: 240px; height: 20px; left: 0px; top: 0px; position: absolute; background: #EFE9E9"></div>
					<div
						style="left: 10px; top: 0px; position: absolute; color: #505050; font-size: 13px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word">게시글에
						욕설은 삼가해주세요.</div>
				</div>
				<div
					style="width: 240px; height: 25px; left: 0px; top: 10px; position: absolute">
					<div
						style="width: 240px; height: 25px; left: 0px; top: 0px; position: absolute; background: #EFE9E9"></div>
					<div
						style="width: 78px; height: 22px; left: 10px; top: 2px; position: absolute">
						<div
							style="width: 20px; height: 20px; left: 58px; top: 1px; position: absolute; background: #D9D9D9"></div>
						<div
							style="left: 0px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word">공지사항</div>
					</div>
				</div>
			</div>
		</div>
		
	<div
		style="width: 35px; height: 35px; left: 991px; top: 1151px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
		<img style="width: 35px; height: 35px"
			src="https://via.placeholder.com/35x35" />
	</div>
	<div
		style="width: 35px; height: 35px; left: 1090px; top: 1151px; position: absolute; justify-content: center; align-items: center; display: inline-flex">
		<img style="width: 35px; height: 35px"
			src="https://via.placeholder.com/35x35" />
	</div>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->

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
			
	   document.getElementById("groupIntroTitle").addEventListener("click", openPopup);

	    function openPopup() {
	      
	      saveAndShowGroupInfo();
	      
	    } 
	    
	    function closePopup() {
	        var popupWrapper= document.querySelector(".popup-wrapper");
	        popupWrapper.parentNode.removeChild(popupWrapper);
	    }
	    
	    function saveAndShowGroupInfo() {
	        var groupNameInput = document.getElementById('groupName');
	        var exampleInput = document.getElementById('example');
	        var example2Input = document.getElementById('example2');

	        if (groupNameInput && exampleInput && example2Input) {
	            var groupName = groupNameInput.value;
	            var example = exampleInput.value;
	            var example2 = example2Input.value;

	            if (groupName && example && example2) {
	                // 팝업 창의 내용과 스타일을 설정
	                var popupContent = "<div class='popup'><h2>생성완료</h2> <button onclick='closePopup()'>확인</button> <p>그룹명 : " + groupName + "</p> <p>그룹인원 : " + example + " </p> <p>소개글(그룹설명) : " + example2 + " </div>";

	                // 팝업 창 요소 생성
	                var popupWrapper = document.createElement("div");
	                popupWrapper.classList.add("popup-wrapper");
	                popupWrapper.innerHTML = popupContent;

	                // 팝업 창을 body에 추가
	                document.body.appendChild(popupWrapper);
	            } else {
	                alert("값을 모두 입력하세요.");
	            }
	        } else {
	            alert("입력 필드를 찾을 수 없습니다.");
	        }
	    }

	    function openNewPopup(){
	        var popupContent = "<div class='popup'><h2>그룹구인창</h2> <button onclick='closePopup()'>등록</button> <p>그룹명 : </p><input type='text' id='groupName' placeholder='그룹명을 입력하세요'> <p>인원수:</p><input type='text' id='example'> <p>소개글:</p><input type='text' id='example2'></div>";
	        // 팝업 창 요소 생성
	      var popupWrapper = document.createElement("div");
	      popupWrapper.classList.add("popup-wrapper");
	      popupWrapper.innerHTML=popupContent;

	      // 팝업 창을 body에 추가
	      document.body.appendChild(popupWrapper);

	    //   savedData = {
	    //         groupName: groupName,
	    //         example: example,
	    //         example2: example2
	    //     };
	    
	    } 
   
   		// 그룹 사이드바 기능
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
      
      
      // 채팅 메세지 올리기
      function sendMessage() {
           // 입력 필드의 값을 가져옵니다.
           const messageInput = document.getElementById('message');
           const message = messageInput.innerText;
           
           console.log("입력 메세지:"+message);
           
           // AJAX 요청을 보냅니다.
           $.ajax({
               type: "POST",
               url: "ChatService.do",
               data: {
                   "message" : message  // 입력된 메시지를 서버로 보냅니다.
               },
               success: function(response) {
                   // 요청이 성공적으로 처리되었을 때의 작업
                   console.log("메세지 입력 완료");
                   console.log("Response:", response);
                   
                // 채팅 박스에 메시지를 추가합니다.
                   const chatbox = document.getElementById('chatbox');
                   const chatTextBox = document.createElement('div');
                   chatTextBox.className = 'chat-text-box';
                   chatTextBox.innerText = message;
                   
                   // 메시지를 채팅 박스에 추가합니다.
                   chatbox.appendChild(chatTextBox);
                   // 채팅 박스를 스크롤하여 가장 최근의 메시지가 표시되도록 합니다.
                   chatbox.scrollTop = chatbox.scrollHeight;
                   
                   // 요청이 성공적으로 처리되면 입력 필드를 초기화합니다.
                    messageInput.innerText = '';
               },
               error: function(xhr, status, error) {
                   // 요청이 실패했을 때의 작업
                   console.error("Error sending message:", error);
               }
           });
       }
      document.getElementById('message').addEventListener('keydown',
            function(event) {
               // 이벤트가 Enter 키를 감지하는지 확인합니다.
               if (event.key === 'Enter') {
                  // 기본 동작을 막습니다. (폼 제출 등)
                  event.preventDefault();
                  // 메시지를 보냅니다.
                  sendMessage();
               }
            });
   </script>
    
</body>
</html>