<%@page import="com.smhrd.model.JoiningGroupDAO"%>
<%@page import="com.smhrd.model.JoiningGroup"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.GroupDAO"%>
<%@page import="com.smhrd.model.Group"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.Member"%>
<%@ page import="com.google.gson.Gson" %>
<%@page import="com.google.gson.JsonObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
   Member loginMember = (Member) session.getAttribute("loginMember");
   Gson gson = new Gson();
   JsonObject jsonObject = new JsonObject();
   jsonObject.addProperty("user_id", loginMember.getUser_id());
   String jsonLoginMember = gson.toJson(jsonObject);
    
%>
<!DOCTYPE html>
<html lang="en">
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
            top: 0px; 
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
            font-family:Pretendard-Regular; 
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
            font-family:Pretendard-Regular; 
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

        .sidebar{
            height: 100%;
            width: 0%;
            position: fixed;
            z-index: 2;     /* 확인완료 */
            top: 141px;
            left: 514px;
            overflow-x: hidden;
            transition: 0.3s;
            padding-top: 60px;
            padding-bottom: 60px;
        }
         .sidebar_chat_box{
            width: 1082px; 
            height: 731px; 
            left: 47px; 
            top: 0px;
            position: absolute
        }
        .sidebar_chat_box_bg{
            width: 1082px; 
            height: 731px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #ECECEC; 
            border: 1px #DBDBDB solid
        }
         .group_member_box{
            width: 215px; 
            height: 731px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white; 
            border: 1px #DBDBDB solid
        }
         .group_memberTitle{
            width: 213px; 
            height: 59px; 
            left: 1px; 
            top: 1px; 
            position: absolute; 
            background: #F7F7F7
        }
        .memberTitle_box{
            width: 105px; 
            height: 59px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
            background: #F7F7F7
        }
		.memberTitle_box_bg{
            width: 105px; 
            height: 59px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
            background: #F7F7F7
        }
        .PersonTitle{
            left: 19px; 
            top: 18px; 
            position: absolute; 
            color: black; 
            font-size: 20px; 
            font-family: Inter; 
            font-weight: 500;
            word-wrap: break-word
        }
        .add_member_box{
            width: 105px; 
            height: 59px; 
            left: 109px; 
            top: 1px; 
            position: absolute
        }
        .add_member_box_bg{
            width: 105px; 
            height: 59px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F7F7F7
        }
        .add_member_button{
            width: 14px; 
            height: 14px; 
            left: 71px; 
            top: 23px; 
            position: absolute; 
           
        }
          .group_member_boundaryBar{
            width: 213px; 
            height: 1px; 
            left: 1px; 
            top: 60px; 
            position: absolute; 
            background: #DBDBDB
        }
         .member_search_Round_box{
            width: 213px; 
            height: 52px; 
            left: 1px; 
            top: 61px; 
            position: absolute
        }
         .member_search_Round_box_bg{
            width: 213px; 
            height: 52px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
         .member_searchBox_button{
            width: 14px; 
            height: 14px; 
            left: 179px; 
            top: 20px; 
            position: absolute; 
        }   
        .member_searchBox{
            width: 205px; 
            height: 29px; 
            left: 4px; 
            top: 12px; 
            position: absolute; 
            background: #F1F1F5; 
            border-radius: 30px
        }
         .inside_group_member_box{
            width: 213px; 
            height: 53px; 
            left: 1px; 
            top: 113px; 
            position: absolute;
            /* ${113 + s.index * 60} */
        }
        .inside_group_member_boudary{
            width: 180px; 
            height: 1px; 
            left: 33px; 
            top: 52px; 
            position: absolute; 
            background: #DBDBDB
        }
        .inside_group_member_box_bg{
            width: 213px; 
            height: 52px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
         .inside_group_member_name{
            width: 135.91px; 
            height: 21.15px; 
            left: 68.54px; 
            top: 15.87px; 
            position: absolute; 
            color: black; 
            font-size: 20px; 
            font-family: Inter; 
            font-weight: 500; 
            word-wrap: break-word
        }
        .inside_group_member_profile{
            width: 30px; 
            height: 30px; 
            left: 34px; 
            top: 11px; 
            position: absolute; 
            background: #FEE292; 
            border-radius: 9999px
        }
         .inside_group_member_whiteSpace{
            width: 34px; 
            height: 52px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
         .myName{
            left: 62px;
            top: 24px; 
            position: absolute; 
            color: black; 
            font-size: 20px; 
            font-family: Noto Sans KR; 
            font-weight: 500; 
            word-wrap: break-word
        }
        .myProfile_box{
            width: 213px; 
            height: 59px; 
            left: 1.5px; 
            top: 671px; 
            position: absolute
        }
        .myProfile_box_bg{
            width: 213px;
            height: 59px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F7F7F7
        }
        .myProfile{
            width: 40px; 
            height: 40px; 
            left: 16px; 
            top: 10px; 
            position: absolute; 
            background: #FEE292; 
            border-radius: 9999px
        }
         .chat_searchBar_bg{
            width: 865px; 
            height: 59px; 
            left: 215px; 
            top: 1px; 
            position: absolute;
            background: white
        }
        .chat_searchBar_box_bg{
            width: 250px; 
            height: 59px; 
            left: 618px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
         .chat_searchBar{
            width: 205px; 
            height: 29px; 
            left: 5px; 
            top: 16px; 
            position: absolute; 
            background: #F1F1F5; 
            border-radius: 30px
        }
        .chat_searchBar_img{
            width: 14px; 
            height: 14px; 
            left: 180px; 
            top: 8px; 
            position: absolute; 
        }
         .group_classify_box{
            width: 105px; 
            height: 59px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F7F7F7
        }
         .classify_profile_box{
            width: 71px; 
            height: 59px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .classify_profile{
            width: 30px; 
            height: 30px; 
            left: 35px; 
            top: 16px; 
            position: absolute; 
            background: #D9D9D9; 
            border-radius: 9999px
        }
        .classify_groupName_box{
            width: 200px; 
            height: 59px; 
            left: 71px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .classify_groupName{
            left: 0px; 
            top: 29px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Inter; 
            font-weight: 400; 
            word-wrap: break-word
        }
         .searchBar_boundary{
            width: 865px; 
            height: 1px; 
            left: 3px; 
            top: 60px; 
            position: absolute; 
            background: #DBDBDB
        }
         .chat_typing_Round_box_bg{
            width: 865px; 
            height: 59px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .chat_typing_Round_box{
            width: 865px; 
            height: 59px; 
            left: 217px; 
            top: 672px; 
            position: absolute
        }
        .chat_typing_box{
            width: 748px; 
            height: 29px; 
            left: 58px; 
            top: 17px;
            position: absolute; 
            background: #EEEEF5; 
            border-radius: 30px
        }
        .chat_photo{
            width: 14px; 
            height: 14px; 
            left: 11px; 
            top: 23px; 
            position: absolute; 
        }
        .option{
            width: 14px; 
            height: 14px; 
            left: 34px; 
            top: 23px; 
            position: absolute; 
        }
         .imoticon{
            width: 13px; 
            height: 14px; 
            left: 810px; 
            top: 25px; 
            position: absolute;
        }
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
            width: 241px; 
            height: 1092px; /* 확인완료 */
            left: 317px; 
            top: 100px; 
            position: fixed;
        }
         .group_box1{
            width: 198px; 
            height: 1092px; 
            left: 43px; 
            top: 0px; 
            position: absolute; 
            background: rgba(255, 255, 255, 0.70);
        }
        .group_box1_groupText_bar{
            width: 196px; 
            height: 1px; 
            left: 44px; 
            top: 111px; 
            position: absolute; 
            background: #DBDBDB
        }
        .group_box1_groupText{
            left: 48px; 
            top: 71px; 
            position: absolute; 
            color: black; 
            font-size: 20px; 
            font-family: Inter; 
            font-weight: 500; 
            word-wrap: break-word;
        }
        /* .produce_group{
            width: 14px; 
            height: 11.04px; 
            left: 215px; 
            top: 85.11px; 
            position: absolute; 
        } */
        
        .group_button{
            width: 172px; 
            height: 52px; 
            top: 112px; 
            left: 67px;
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
        
        
        /* 중앙 */
          .boardMiddleWhole_Frame{
            width: 798px; height: 1092px; left: 561px; top: 100px; position: absolute
        }
        .boardMiddleWhole_Block{
            width: 797px; height: 1092px; left: 0px; top: 0px; position: absolute; background: #F6CFCF
        }
        .boardLeft_Line{
            width: 1px; height: 1092px; left: -1px; top: 0px; position: absolute; background: #DBDBDB
        }
        .boardRight_Line{
            width: 1px; height: 1092px; left: 797px; top: 0px; position: absolute; background: #DBDBDB
        }
        .boardUp_WholePart{
            width: 797px; height: 194px; left: 0px; top: 0px; position: absolute
        }
        .boardWord_Frame{
            width: 797px; height: 194px; left: 0px; top: 0px; position: absolute
        }
        .boardWidthBlock{
            width: 797px; height: 194px; left: 0px; top: 0px; position: absolute; background: white
        }
        .boardNarrowBlock{
            width: 797px; height: 30px; left: 0px; top: 50px; position: absolute; background: white
        }
        .boardWord_decoFrame{
            width: 300px; height: 30px; left: 50px; top: 50px; position: absolute
        }
        .boardWord_decoBlock{
            width: 72px; height: 30px; left: 0px; top: 0px; position: absolute; background: white
        }
        .boardWord_deco{
            left: 0px; top: 0px; position: absolute; color: black; font-size: 25px; font-family: Inter; font-weight: 700; word-wrap: break-word
        }
        .searchBar_wholeFrame{
            width: 797px; height: 48px; left: 0px; top: 120px; position: absolute
        }
        .searchBar_wholePart{
            width: 797px; height: 48px; left: 0px; top: 0px; position: absolute; background: white
        }
        .searchBarFrame{
            width: 513px; height: 44px; left: 224px; top: 2px; position: absolute
        }
        .searchButton_addendum{
            width: 483px; height: 44px; left: 0px; top: 0px; position: absolute; background: #F1F1F1; border-radius: 30px; border: none
        }
        .searchButton{
            width: 15px; height: 15px; left: 475px; top: 14px; position: absolute
        }
         .groupIntroFrame{
            width: 797px; height: 898px; left: 0px; top: 194px; position: absolute
        }
         .groupIntroTitle_block{
            width: 797px; height: 898px; left: 0px; top: 0px; position: absolute; background: white
        }
         .groupIntroTitle_box{
            width: 682px; height: 52px; left: 57px; top: 0px; position: absolute; background: white
        }
        
        /* 오른쪽 사이드 */
         .ad_frame{
            width: 240px; height: 1092px; left: 1360px; top: 100px; position: absolute
        }
        .ad_block{
            width: 240px; height: 1092px; left: 0px; top: 0px; position: absolute; background: white
        }
        .whole_qna_frame{
            width: 240px; height: 215px; left: 0px; top: 877px; position: absolute
        }
        .whole_qna_block{
            width: 240px; height: 215px; left: 0px; top: 0px; position: absolute; background: white
        }
        .whole_qna{
            width: 240px; height: 123px; left: 0px; top: 30px; position: absolute
        }
        .emailInfo_frame{
            width: 240px; height: 28px; left: 0px; top: 60px; position: absolute
        }
        .emailInfo_block{
            width: 240px; height: 28px; left: 0px; top: 0px; position: absolute; background: white
        }
        .emailInfo{
            left: 10px; top: 1px; position: absolute; color: black; font-size: 18px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word
        }
        .run_day_whole_info{
            width: 240px; height: 15px; left: 0px; top: 108px; position: absolute
        }
        .run_day_frame{
            width: 240px; height: 15px; left: 0px; top: 0px; position: absolute; background: white
        }
        .run_day_block{
            width: 139px; height: 14px; left: 10px; top: 1px; position: absolute
        }
        .run_day{
            left: 0px; top: 0px; position: absolute; color: black; font-size: 12px; font-family: Roboto; font-weight: 500; word-wrap: break-word
        }
        .business_time{
            left: 80px; top: 0px; position: absolute; color: black; font-size: 12px; font-family: Roboto; font-weight: 500; word-wrap: break-word
        }
        .qna_bgcolor_block{
            width: 240px; height: 30px; left: 0px; top: 0px; position: absolute
        }
        .qna_bgcolor{
            width: 240px; height: 30px; left: 0px; top: 0px; position: absolute; background: white
        }
        .qna_info{
            left: 10px; top: 2px; position: absolute; color: black; font-size: 18px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word
        }
        .infoLine{
            width: 240px; height: 1px; left: 0px; top: 39px; position: absolute; background: #DBDBDB
        }
        .rubber_draw_box{
            width: 240px; height: 336px; left: 0px; top: 531px; position: absolute
        }
        .rubber_company_title_frame{
            width: 240px; height: 22px; left: 0px; top: 270px; position: absolute
        }
        .rubber_company_title_block{
            width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white
        }
        .rubber_company_title{
            left: 10px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word
        }
        .rubber_product_name_frame{
            width: 240px; height: 22px; left: 0px; top: 292px; position: absolute
        }
        .rubber_product_name_block{
            width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white
        }
        .rubber_product_name{
            left: 10px; top: 0px; position: absolute; color: #505050; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word
        }
        .rubber_price_info_frame{
            width: 240px; height: 22px; left: 0px; top: 314px; position: absolute
        }
        .rubber_price_info{
            width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white
        }
        .rubber_price_block{
            width: 58px; height: 21px; left: 10px; top: 0px; position: absolute
        }
        .rubber_price_won{
            left: 40px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word
        }
        .rubber_price{
            left: 0px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Roboto; font-weight: 500; word-wrap: break-word
        }
        .rubber_whole_box{
            width: 240px; height: 292px; left: 0px; top: 0px; position: absolute; background: rgba(0, 0, 0, 0.03)
        }
        .rubber_img_box{
            width: 240px; height: 240px; left: 0px; top: 30px; position: absolute; background: #DBDBDB
        }
        .chicken_draw_box{
            width: 240px; height: 336px; left: 0px; top: 185px; position: absolute
        }
        .chickenCompany_title_frame{
            width: 240px; height: 22px; left: 0px; top: 270px; position: absolute
        }
        .chickenCompany_title_block{
            width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white
        }
        .chickenCompany_title{
            left: 10px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word
        }
        .chicken_product_name_frame{
            width: 240px; height: 22px; left: 0px; top: 292px; position: absolute
        }
        .chicken_product_name_block{
            width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white
        }
        .chicken_product_name{
            left: 10px; top: 0px; position: absolute; color: #505050; font-size: 15px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word
        }
        .chickenPrice_info_frame{
            width: 240px; height: 22px; left: 0px; top: 314px; position: absolute
        }
        .chickenPrice_info{
            width: 240px; height: 22px; left: 0px; top: 0px; position: absolute; background: white
        }
        .chickenPrice_block{
            width: 58px; height: 21px; left: 10px; top: 1px; position: absolute
        }
        .chicken_Price{
            left: 0px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Roboto; font-weight: 500; word-wrap: break-word
        }
        .chickenPrice_won{
            left: 45px; top: 0px; position: absolute; color: black; font-size: 14px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word
        }
        .chicken_whole_box{
            width: 240px; height: 292px; left: 0px; top: 0px; position: absolute; background: rgba(0, 0, 0, 0.03)
        }
        .chicken_img_box{
            width: 240px; height: 240px; left: 0px; top: 30px; position: absolute; background: #DBDBDB
        }
        .notice_whole_frame{
            width: 240px; height: 95px; left: 0px; top: 65px; position: absolute
        }
        .notice_whole_block{
            width: 240px; height: 95px; left: 0px; top: 0px; position: absolute; background:  #EFE9E9; border-radius: 5px
        }
        .notice_explain_frame{
            width: 240px; height: 20px; left: 0px; top: 35px; position: absolute
        }
        .notice_explain_block{
            width: 240px; height: 20px; left: 0px; top: 0px; position: absolute; background:  #EFE9E9
        }
        .notice_explain{
            left: 10px; top: 0px; position: absolute; color: #505050; font-size: 13px; font-family: Noto Sans KR; font-weight: 400; word-wrap: break-word
        }
        .notice_title_frame{
            width: 240px; height: 25px; left: 0px; top: 10px; position: absolute
        }
        .notice_title_block{
            width: 240px; height: 25px; left: 0px; top: 0px; position: absolute; background:  #EFE9E9
        }
        .notice_box_block{
            width: 78px; height: 22px; left: 10px; top: 2px; position: absolute
        }
        .notice_button{
            width: 20px; height: 20px; left: 58px; top: 1px; position: absolute
        }
        .notice{
            left: 0px; top: 0px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; word-wrap: break-word
        }
        
        .custom_search_bar {
            width: 153px;
            height: 44px;
            outline: none;
            padding-left: 30px;
            background: #F1F1F1;
            /* 다른 필요한 스타일 */
        }
        
        /* 팝업창 */
         .join_button_box{
            width: 50px; 
            height: 22px; 
            left: 425px;
            top: 270px; 
            position: absolute
        }
        .join_button_box_bg{
            width: 50px; 
            height: 22px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #999999; 
            border-radius: 5px
        }
        .join_button_text{
            left: 5px; 
            top: 0px; 
            position: absolute; 
            color: white; 
            font-size: 15px; 
            font-family: pretendard-regular; 
            font-weight: 400; 
            word-wrap: break-word;
            background-color: transparent;
            border:none;
            cursor:pointer
        }
        
        
        /* 그룹 생성 스타일 */
        #groupjoin {
          width: 14px; 
          height: 11.04px; 
          left: 215px; 
          top: 85.11px; 
          position: absolute;
          cursor: pointer; /* 커서를 손가락으로 바꿈 */
        }
      
        /* 팝업 스타일 */
        .popup {
          display: none; /* 기본적으로 숨김 */
          position: fixed;
          top: 100%;
          left: 100%;
          transform: translate(-50%, -50%);
          background-color: #fefefe;
         /*  border: 1px solid #888; */
          z-index: 1000; /* 다른 요소 위에 위치 */
          padding: 20px;
        }
      
        .popup-content {
          
           width: 500px; 
           height: 300px; 
           left: 0px; 
           top: 0px; 
           position: absolute; 
           background: #FFFFFF;
           border:#dbdbdb solid;
        }
        .box{
            width: 100%; 
            height: 100%; 
            position: relative
        }
        /* .box_bg{
            width: 500px; 
            height: 275px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFFFF
        } */

         /* grouptitle */
         .group_approve_title_round_box{
            width: 500px; 
            height: 31px; 
            left: 0px; 
            top: 0px; 
            position: absolute
        }
        .group_approve_title_box_round_bg{
            width: 500px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .group_approve_title_box{
            width: 172px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute
        }
        .group_approve_title_box_bg{
            width: 170px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
             background: white
        }
        .group_approve_title{
            left: 22px; 
            top: 1px; 
            position: absolute; 
            color: black; 
            font-size: 20px; 
            font-family: pretendard-regular; 
            font-weight: 500; 
            word-wrap: break-word
        }


        .group_approve_title_box_boundary{
            width: 500px; 
            height: 1px; 
            left: 0px; 
            top: 30px; 
            position: absolute; 
            background: #DBDBDB
        }

        /* body~ */
        .join_typing_round_box{
            width: 500px;
            height: 245px; 
            left: 0px; 
            top: 30px;
            position: absolute
        }
        .join_typing_round_box_bg{
            width: 500px; 
            height: 245px;
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }

         /* title */
         .title_round_box{
            width: 294px; 
            height: 38.70px; 
            left: 25px; 
            top: 19.35px; 
            position: absolute
        }
        .title_round_box_bg{
            width: 294px; 
            height: 38.70px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3; 
            border-radius: 5px
        }
        .title_typing_box{
            width: 284.20px; 
            height: 38.70px; 
            left: 4.57px; 
            top: 0px; 
            position: absolute
        }
        .title_typing_box_bg{
            width: 284.20px; 
            height: 38.70px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3
        }
        .group_title_type{
            width: 284.20px; 
            height: 22.45px; 
            left: 0px; 
            top: 7.74px; 
            position: absolute; 
            color: #797979; 
            font-size: 18px; 
            font-family: pretendard-regular; 
            font-weight: 300; 
            word-wrap: break-word;
            background-color: transparent;
            border:none
        }

        /* body~ */
        .approve_typing_round_box{
            width: 500px; 
            height: 390px; 
            left: 0px; 
            top: 30px;
            position: absolute
        }
        .approve_typing_round_box_bg{
            width: 500px; 
            height: 390px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
            background: white
        }
        /* personnel */
        .personnel_round_box{
            width: 146px; 
            height: 38.70px; 
            left: 329px; 
            top: 19.35px; 
            position: absolute
        }
        .personnel_round_box_bg{
            width: 146px; 
            height: 38.70px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
            background: #F3F3F3; 
            border-radius: 5px
        }
        
        .personnel_typing_box{
            width: 141.13px; 
            height: 38.70px; 
            left: 2.27px; 
            top: 0px; 
            position: absolute
        }
        .personnel_typing_box_bg{
            width: 141.13px; 
            height: 38.70px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3
        }
        .personnel_type{
            width: 141.13px;
            height: 21.93px; 
            left: 0px; 
            top: 7.74px;
            position: absolute; 
            color: #797979; 
            font-size: 18px; 
            font-family: pretendard-regular; 
            font-weight: 300; 
            word-wrap: break-word;
            background-color: transparent;
            border:none
        }


       /* introduction */
       .group_introduction_round_box{
            width: 450px; 
            height: 147.06px;
            left: 25px; 
            top: 77.40px; 
            position: absolute
        }
        .group_introduction_round_box_bg{
            width: 450px; 
            height: 147.06px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
            background: #F3F3F3; 
            border-radius: 5px
        }
        .introuduction_typing_round_box{
            width: 435px; 
            height: 147.06px; 
            left: 7px; 
            top: 0px; 
            position: absolute
        }
        .introuduction_typing_round_box_bg{
            width: 435px;
            height: 147.06px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3
        }
        .Introduction_type{
            width: 435px; 
            height: 147.06px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            color: #797979; 
            font-size: 13px; 
            font-family: pretendard-regular; 
            font-weight: 300; 
            word-wrap: break-word;
            background-color: transparent;
            border:none
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
        .chatbox{
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
        
        /* top버튼, 그룹구인 버튼 */
        .button{
            width: 25px; height: 25px; left: 948px; top: 1107px; position: absolute
        }
         #buttonStyle{
            width: 50px; height: 50px; left: 0px; top: 0px; position: absolute; background-color: white; border: white solid; cursor: pointer;
        }
        .write_button{
            width: 25px; height: 50px; left: 1000px; top: 1000px; position: absolute
        }
        #write_buttonStyle{
            width: 70px; height: 100; left: 220px; top: 6px; position: absolute; border: 1px #212121 solid 
        }
        
        /* 그룹생성 팝업위치 */
        #myPopup {
        display: none;
        position: absolute;
        left: 200px;
        top: 100px;
        transform: translate(-50%, -50%);
        background-color: white;
        padding: 20px;
        border: 1px solid #dbdbdb;
        z-index: 10000000000000; /* 팝업이 다른 요소 위에 보이도록 함 */
       }
       
       #GroupInfoPopup {
        display: none;
        position: absolute;
        left: 200px;
        top: 100px;
        transform: translate(-50%, -50%);
        background-color: white;
        padding: 20px;
        border: 1px solid black;
        z-index: 10000000000000; /* 팝업이 다른 요소 위에 보이도록 함 */
        
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
    </div>
   
     
      
   <!-- group -->
   <div class="group_main_box">
      <div class="group_box1"></div>
      <div class="group_box1_groupText_bar"></div>
      <div class="group_box1_groupText">Group</div>
      <img id=groupjoin src="img/Vector.png"></img>
      
      
      <!-- 회원이 소속한 그룹 띄우기 -->
            <%
               Member logiMember2Member = (Member) session.getAttribute("loginMember");
               List<JoiningGroup> JoiningGroupList = null;
               if (logiMember2Member != null) {
                  JoiningGroupList = new JoiningGroupDAO().JoiningGroupList(logiMember2Member.getUser_id());
                  pageContext.setAttribute("JoiningGroupList", JoiningGroupList);
               }
            %>
      <c:forEach items="${JoiningGroupList}" var="JoiningGroup" varStatus="s">
         <div id="group_button_${s.index }" class="group_button" onclick="ClickNav(${s.index})" style="top: ${120+s.index * 60 + 12}px;">
             <table>
                 <tr>
                     <td>
                         <div class="group_button_bg_${s.index }"></div>
                         <div style="width: 30px; height: 30px; left: 6px; top:${s.index+12}px; position: absolute; background: #DBDBDB; border-radius: 9999px"></div>
                         <div style="width: 172px; height: 1px; left: 1px; top: ${s.index + 52}px; position: absolute; background: #D9D9D9"></div>
                         <div style="left: 41px; top: ${s.index + 24}px; position: absolute; color: black; font-size: 13px; font-family: Inter; font-weight: 400; word-wrap: break-word">
                             ${JoiningGroup.group_name}
                         </div>
                     </td>
                 </tr>
            </table> 
   
         </div>
       </c:forEach>
   </div>


      <!-- person & chat -->
      
      <c:forEach items="${JoiningGroupList}" var="JoiningGroup" varStatus="s">
         <div id="sidebar_${s.index }" class="sidebar">
            
            <div class="sidebar_chat_box">
                <div class="sidebar_chat_box_bg"></div>
                <div class="group_member_box">
                	<div class="group_memberTitle">
                		<div class="memberTitle_box">
                            <div class="memberTitle_box_bg"></div>
                            <div class="PersonTitle">Person</div>
                        </div>
                        <div class="add_member_box">
                            <div class="add_member_box_bg"></div>
                            <img class="add_member_button" src="./img/link.png"></img>
                        </div>               	
                	
                	</div>
                	
                </div> <!--완료 -->
                <div class="group_member_boundaryBar"></div>
                <div class="member_search_Round_box">
                    <div class="member_search_Round_box_bg"></div>
                    <div class="member_searchBox"></div>
                    <img class="member_searchBox_button" src="./img/search2.png"></img>
                </div>
               <div class="inside_group_member_box"> <!-- 52px -->
               		<div class="inside_group_member_box_bg"></div>
               		
                    <div class="inside_group_member_boudary"></div>
                    <div class="inside_group_member_name"><%=logiMember2Member.getUser_id() %></div>
                    
                     
                 	<div class="inside_group_member_whiteSpace"></div>
                    <div class="inside_group_member_profile"></div>
               </div> 
                <!-- me -->
                <div class="myProfile_box">
                    <div class="myProfile_box_bg"></div>
                    <div class="myProfile"></div>
                    <div class="myName"><%=logiMember2Member.getUser_id() %></div>
                </div>
                
                 <div class="chat_searchBar_bg">
                    <div class="chat_searchBar_box_bg">
                        <div class="chat_searchBar">
                            <img class="chat_searchBar_img" src="./img/search2.png"></img>

                        </div>

                    </div>

                    <div class="group_classify_box">
                        <div class="classify_profile_box">
                            <div class="classify_profile"></div>

                        </div>
                        <div class="classify_groupName_box">
                            <div class="classify_groupName">Group1</div>
                            
                        </div>

                    </div>
	                <div class="searchBar_boundary"></div>
	                <div class="group_classify_box">
	                     <div class="classify_profile_box">
	                          <div class="classify_profile"></div>
	
	                     </div>
	                     <div class="classify_groupName_box">
	                          <div class="classify_groupName">${JoiningGroup.group_name}</div>
	                            
	                     </div>
	
	                </div>
	                
                </div>
                <div class="searchBar_boundary"></div>
               	<!-- 채팅 출력창 -->
	            <div id="chatbox" class="chatbox"></div>
                
	            <!-- 타이핑란 -->
	            <div class="chat_typing_Round_box">
	                  <div class="chat_typing_Round_box_bg"></div>
	                  <div class="chat_typing_box"></div>
	                  <img class="chat_photo" src="./img/Photo camera.png"></img>
	                  <img class="option" src="./img/option.png"></img>
	                  <img class="imoticon" src="./img/imoticon.png"></img>
	                  <div style="width: 13px; height: 14px; left: 760px; top: 23px; position: absolute; background: #D9D9D9"
                 			id="button" class="button" onclick="sendMessage()"></div>	
	                  <div style="width: 748px; height: 29px; left: 58px; top: 17px; position: absolute; background: #EEEEF5; border-radius: 30px"
                  			contenteditable="true" id="message" class="message"></div>
	            </div>
				            
                
            </div>
                     
         </div>
         
      </c:forEach>


      <!-- footer -->
      <div class="footer"
         style="width: 1920px; height: 252px; left: 0px; top: 1042px; position: absolute">
      </div>

      <div class="layer"></div>


      <!-- 중앙 -->
      <div class="boardMiddleWhole_Frame">
            <div class="boardMiddleWhole_Block"></div>
            <div class="boardLeft_Line"></div>
            <div class="boardRight_Line"></div>
            <div class="boardUp_WholePart">
                <div class="boardWord_Frame">
                    <div class="boardWidthBlock"></div>
                    <div class="boardNarrowBlock"></div>
                    <div class="boardWord_decoFrame">
                        <div class="boardWord_decoBlock"></div>
                        <div class="boardWord_deco">Open Group</div>
                    </div>
                </div>
                <div class="searchBar_wholeFrame">
                    <div class="searchBar_wholePart"></div>
                    <div class="searchBarFrame">
                        <div>
                            <input id="search_bar" class="searchButton_addendum " type="text" onfocus="moveCursorToEnd(this)"  onkeydown="searchKeyPress(event)" style="outline: none; padding-left: 30px; background: #F1F1F1" autocomplete="off">
                        </div>
                        <div class="searchButton"><img src="./img/search2.png"></div>
                    </div>
                </div>
            </div>

         <!-- 전체그룹 명단 -->
            <div class="groupIntroFrame">
                <div class="groupIntroTitle_block"></div>
            	<div style="width: 30px; height: 30px; left: 67px; top: 11px; position: absolute; background: #D9D9D9; border-radius: 9999px"></div>
            	<div class="groupIntroTitle_box">
   
   
	               <table>
	                  <%
	                     List<Group> GroupList = null;
	                     GroupList = new GroupDAO().groupList();
	      
	                     pageContext.setAttribute("GroupList", GroupList);
	                  %>
	                  <c:forEach items="${GroupList}" var="group" varStatus="s">
	                      <tr>
	                          <td>
	                              <div class="Group"></div>
	                              <div id="GroupList_${s.index}" style="width: 682px; height: 52px; left: 0px; top: ${s.index*60}px; position: absolute; background: white;"></div>
	                              <div style="width: 682px; height: 1px; left: 0px; top: ${s.index * 60 + 52}px; position: absolute; background: #DBDBDB"></div>
	                              <form action="GroupRequestService.do" method="post">
	                                  <div id="GroupTitle_${s.index }" style="left: 40px; top: ${s.index * 60 +10 }px; position: absolute; color: black; font-size: 15px; font-family: Inter; font-weight: 400; word-wrap: break-word;">
	                                      ${group.group_name}
	                                  </div>
	                                  <div id="Groupinfo_${s.index }" style="left: 40px; top: ${s.index * 60 +30 }px; position: absolute; color: black; font-size: 10px; font-family: Inter; font-weight: 400; word-wrap: break-word;">
	                                      ${group.group_info}
	                                  </div>
	                                  <div id="Grouplimit_${s.index }" style="left: 550px; top: ${s.index * 60 +5 }px; position: absolute; color: black; font-size: 15px; font-family: Inter; font-weight: 400; word-wrap: break-word;">
	                                      ${group.group_limit}
	                                  </div>
	                                  <div style="left: 600px; top: ${s.index * 60 +5 }px; position: absolute;">
	                                      <input id="GroupRequest_${s.index}" type="button" value="가입신청" style="width: auto; height: auto; border:none; font-family: pretendard-regular; background-color: transparent; cursor:pointer" onclick="sendGroupRequest(${s.index})">
	                                  </div>
	                              </form>
	                              <div id="GroupList_circle" style="width: 30px; height: 30px; left: 0px; top: ${s.index*60+12}px; position: absolute; background: #D9D9D9; border-radius: 9999px"></div>
	                          </td>
	                      </tr>
	                  </c:forEach>
	               </table>
            </div>
            
             <!-- 그룹 만들기 버튼 -->
	
	      <div id="myPopup" class="popup">
	         <span class="close_groupjoin" onclick="closePopup1()">&times;</span>
	         <div class="popup-content">
	            <!-- <h5>그룹생성하기</h5> -->
	            <form action="NewgroupService.do" method="post">
	               <!-- <li><input type="text" name="group_name"
	                  placeholder="그룹명을 입력하세요"></li>
	               <li><input type="text" name="group_info"
	                  placeholder="그룹소개를 입력하세요"></li>
	               <li><input type="number" name="group_limit"
	                  placeholder="그룹 정원"></li>  -->
	               	<div class="join_typing_round_box">
	            	<div class="join_typing_round_box_bg"></div>
	            	<div class="personnel_round_box">
	                	<div class="personnel_round_box_bg"></div>
	                	<div class="personnel_typing_box">
	                    	<div class="personnel_typing_box_bg"></div>
	                    	<div><input class="personnel_type" name="group_limit" placeholder="Personnel..."></div>
	                	</div>
	            	</div>
	            	<div class="group_introduction_round_box">
	                	<div class="group_introduction_round_box_bg"></div>
	                	<div class="introduction_typing_round_box">
	                    	<div class="introuduction_typing_round_box_bg"></div>
	                    	<div><input class="Introduction_type" name="group_info" placeholder="Introduction..."></div>
	                	</div>
	            	</div>
	            	<div class="title_round_box">
	                	<div class="title_round_box_bg"></div>
	                	<div class="title_typing_box">
	                    	<div class="title_typing_box_bg"></div>
	                    	<div><input class="group_title_type" name="group_name"" placeholder="Title..."></div>
	                	</div>
	            	</div>
	        	</div>
	        	<div class="group_approve_title_round_box">
	            	<div class="group_approve_title_box_boundary"></div>
	            	<div class="group_approve_title_box_round_bg"></div>
	            	<div class="group_approve_title_box">
	                	<div class="group_approve_title_box_bg"></div>
	                	<div class="group_approve_title">Group Join</div>
	            	</div>
	        	</div>
	                  
	                  
	            <div class="join_button_box">
	            	<div class="join_button_box_bg"></div>
	            	<input type="submit" value="Join" class="join_button_text"></div>
	        	</div>
	               
	               
	            </form>
	         </div>
      </div>
      
            
            
         </div>
         
         
         <script >
         function sendGroupRequest(index) {
            var groupName = document.getElementById("GroupTitle_" + index).textContent;
            var groupInfo = document.getElementById("Groupinfo_" + index).textContent;
            var groupLimit = document.getElementById("Grouplimit_" + index).textContent;
            var user_id = JSON.parse('<%= jsonLoginMember %>').user_id;
             console.log("가입신청 - 그룹 ID:", groupName);
             console.log("가입신청 - 그룹 정보:", groupInfo);
             console.log("가입신청 - 그룹 인원:", groupLimit);
             console.log("가입신청 - 사용자 ID:", user_id);
             
              var xhr = new XMLHttpRequest();
             xhr.open("POST", "GroupRequestService.do", true);
             xhr.setRequestHeader("Content-Type", "application/json");
             xhr.onreadystatechange = function () {
                 if (xhr.readyState === 4) {
                     if (xhr.status === 200) {
                         // 서버로부터 응답을 받았을 때 할 작업
                         console.log("요청이 성공적으로 전송되었습니다.");
                         // 여기에 팝업을 출력하는 코드 추가
                         alert("" + groupName + " 그룹에 가입되었습니다.");
                         // 페이지를 새로고침
                         location.reload();
                     } else {
                         console.log("요청 전송 중 오류가 발생했습니다.");
                         // 오류가 발생했을 때 사용자에게 알림을 주는 코드 추가
                         alert("그룹 가입 요청 중 오류가 발생했습니다.");
                     }
                 }
             };
             var data = JSON.stringify({ groupName: groupName, groupInfo:groupInfo, groupLimit:groupLimit, user_id: user_id  });
             xhr.send(data); 
         } 
         </script>
   
      </div>

      <!-- 오른쪽 사이드 -->
          <div class="ad_frame">
            <div class="ad_block"></div>
            <div class="whole_qna_frame">
                <div class="whole_qna_block"></div>
                <div class="whole_qna">
                    <div class="emailInfo_frame">
                        <div class="emailInfo_block"></div>
                        <div class="emailInfo">Ifive@naver.com</div>
                    </div>
                    <div class="run_day_whole_info">
                        <div class="run_day_frame"></div>
                        <div class="run_day_block">
                            <div class="run_day">운영시간:평일</div>
                            <div class="business_time">09:00~18:00</div>
                        </div>
                    </div>
                    <div class="qna_bgcolor_block">
                        <div class="qna_bgcolor"></div>
                        <div class="qna_info">Q&A</div>
                    </div>
                    <div class="infoLine"></div>
                </div>
            </div>
            <div class="rubber_draw_box">
                <div class="rubber_company_title_frame">
                    <div class="rubber_company_title_block"></div>
                    <div class="rubber_company_title">고무나라</div>
                </div>
                <div class="rubber_product_name_frame">
                    <div class="rubber_product_name_block"></div>
                    <div class="rubber_product_name">근력 유도밴드 3cm</div>
                </div>
                <div class="rubber_price_info_frame">
                    <div class="rubber_price_info"></div>
                    <div class="rubber_price_block">
                        <div class="rubber_price_won">원</div>
                        <div class="rubber_price">5,200</div>
                    </div>
                </div>
                <div class="rubber_whole_box"></div>
                <a href="http://gomunara.com/product/%EA%B3%A0%EB%AC%B4%EB%82%98%EB%9D%BC-%EA%B7%BC%EB%A0%A5%EB%B0%B4%EB%93%9C-3cm/66/category/33/display/1/"><div class="rubber_img_box"><img src="https://image1.coupangcdn.com/image/vendor_inventory/c815/e925c1a6de43d437702b41ca7b509aae96570ffc92e81990905d5b9c2bf6.jpg" width="240px" height="240px"></div></a>
            </div>
            <div class="chicken_draw_box">
                <div class="chickenCompany_title_frame">
                    <div class="chickenCompany_title_block"></div>
                    <div class="chickenCompany_title">바르닭</div>
                </div>
                <div class="chicken_product_name_frame">
                    <div class="chicken_product__name_block"></div>
                    <div class="chicken_product_name">[바르닭] 소스품은 닭가슴살</div>
                </div>
                <div class="chickenPrice_info_frame">
                    <div class="chickenPrice_info"></div>
                    <div class="chickenPrice_block">
                        <div class="chicken_Price">2,900</div>
                        <div class="chickenPrice_won">원</div>
                    </div>
                </div>
                <div class="chicken_whole_box"></div>
                <a href="https://mall.drdiary.co.kr/goods/goods_view.php?goodsNo=1000002278&utm_term=&gad_source=1&gclid=CjwKCAjwrIixBhBbEiwACEqDJdEPx-MxyixC9IJQqZa83Toe0ezkSHy0lfaclmHzDv-5y_knzVqpgRoC-hYQAvD_BwE"><div class="chicken_img_box"><img src="https://godomall.speedycdn.net/9e886df8f0ec5d2f44f612f355605e0b/goods/1000002278/image/detail/1000002278_detail_019.jpg" width="240px" height="240px"></div></a>
            </div>
            <div class="notice_whole_frame">
                <div class="notice_whole_block"></div>
                <div class="notice_explain_frame">
                    <div class="notice_explain_block"></div>
                    <div class="notice_explain">게시글에 욕설은 삼가해주세요.</div>
                </div>
                <div class="notice_title_frame">
                    <div class="notice_title_block"></div>
                    <div class="notice_box_block">
                        <div class="notice_button"><img src="./img/Feather Icon2.png"></div>
                        <div class="notice">공지사항</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="button" >
        <div><button id="buttonStyle" onclick="scrollToTop()" ><img src="./img/Feather Icon.png"></button></div>
    </div>
      

      
      <script>
      /* 그룹생성 팝업 기능  */
            // 팝업 표시 함수
            function showPopup() {
               document.getElementById("myPopup").style.display = "block";
            }
   
            // 팝업 숨김 함수
            function closePopup1() {
               document.getElementById("myPopup").style.display = "none";
            }
   
            // 요소 클릭 시 팝업 표시
            document.getElementById("groupjoin").addEventListener("click",
                  function() {
                     showPopup();
                  });
         
         
         // 검색창 커서
      document.addEventListener("DOMContentLoaded", function() {
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
       

         // 그룹 구인창 팝업
         function openNewPopup() {
            var popupContent = "<div class='popup'><h2>그룹구인창</h2> <button onclick='closePopup()'>등록</button> <p>그룹명 : </p><input type='text' id='groupName' placeholder='그룹명을 입력하세요'> <p>인원수:</p><input type='text' id='example'> <p>소개글:</p><input type='text' id='example2'></div>";
            // 팝업 창 요소 생성
            var popupWrapper = document.createElement("div");
            popupWrapper.classList.add("popup-wrapper");
            popupWrapper.innerHTML = popupContent;

            // 팝업 창을 body에 추가
            document.body.appendChild(popupWrapper);
         }

         // 버튼을 클릭하면 페이지 맨 위로 스크롤합니다.
         function scrollToTop() {
            window.scrollTo({
               top : 0,
               behavior : "smooth" // 부드럽게 스크롤
            });
         }
         
         function ClickNav(index) {
              console.log("클릭한 버튼의 인덱스:", index);
              const layer = document.querySelector('.layer');
              const sidebar = document.getElementById("sidebar_" + index);
              
              layer.style.display = 'block';
              sidebar.style.width = "1250px"; // 채팅창
              document.querySelector(".footer").style.display = 'block'; // 푸터 보이기
              
              layer.addEventListener('click', function() {
                  layer.style.display = 'none';
                  sidebar.style.width = '0'; // 사이드바를 닫기
                  document.querySelector(".footer").style.display = 'none'; // 푸터 감추기
              }); 
          }

         // 채팅 메세지 올리기
         function sendMessage() {
             // 입력 필드의 값을 가져옵니다.
             const messageInput = document.getElementById('message');
             const message = messageInput.innerText;
             console.log(message);
         
             // AJAX 요청을 보냅니다.
             $.ajax({
                 type: "POST",
                 url: "ChatService.do",
                 data: {
                     "message": message,
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
         
         document.getElementById('message').addEventListener('keydown', function(event) {
             // Enter 키를 눌렀을 때 sendMessage 함수 호출
             if (event.key === 'Enter') {
                 sendMessage();
             }
         });

      </script>
</body>
</html>