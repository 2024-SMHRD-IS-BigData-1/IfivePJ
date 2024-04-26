
<%@page import="com.smhrd.model.CaloryDAO"%>
<%@page import="com.smhrd.model.Calory"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.smhrd.model.Schedule"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.ScheduleDAO"%>
<%@page import="com.smhrd.model.Member"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%Member loginMember = (Member)session.getAttribute("loginMember"); %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Document</title>
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

        /* group sidebar */
        .group_main_box{
            width: 241px; 
            height: 1092px; 
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
        .produce_group{
            width: 14px; 
            height: 11.04px; 
            left: 215px; 
            top: 85.11px; 
            position: absolute; 
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

        /* sidebar_groupMember */
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
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F7F7F7
        }
        .memberTitle_box{
            width: 105px; 
            height: 59px; 
            left: 0px; 
            top: 0px; 
            position: absolute
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
            top: 0px; 
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
            top: 25px; 
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
        .member_searchBox{
            width: 205px; 
            height: 29px; 
            left: 4px; 
            top: 12px; 
            position: absolute; 
            background: #F1F1F5; 
            border-radius: 30px
        }
        .member_searchBox_button{
            width: 14px; 
            height: 14px; 
            left: 179px; 
            top: 20px; 
            position: absolute; 
        }   

        .inside_group_member_box{
            width: 213px; 
            height: 53px; 
            left: 1px; 
            top: 113px; 
            position: absolute
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
        .inside_group_member_profile{
            width: 30px; 
            height: 30px; 
            left: 34px; 
            top: 11px; 
            position: absolute; 
            background: #FEE292; 
            border-radius: 9999px
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
        .inside_group_member_whiteSpace{
            width: 34px; 
            height: 52px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }

        .myProfile_box{
            width: 213px; 
            height: 59px; 
            left: 1.5px; 
            top: 673px; 
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
        .myName{
            left: 62px;
            top: 24px; 
            position: absolute; 
            color: black; 
            font-size: 20px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            word-wrap: break-word
        }

        /*  */
        .sidebar_chat_box{
            width: 1082px; 
            height: 731px; 
            left: 55px; 
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

        .searchBar_boundary{
            width: 865px; 
            height: 1px; 
            left: 215px; 
            top: 60px; 
            position: absolute; 
            background: #DBDBDB
        }
        .group_classify_box{
            width: 142px; 
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
            width: 71px; 
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
        .group_button_bg1{
            width: 178px; 
            height: 52px; 
            left: -1px; 
            top: 0px; 
            cursor: pointer; 
            position: absolute; 
            background: white;
        }
       
        .group_button_bg1:hover {
            background-color: rgba(155, 155, 155, 0.5);
        }
        .group_button_profile1{
            width: 30px; 
            height: 30px; 
            left: 6px; 
            top: 12px; 
            position: absolute; 
            background: #D9D9D9; 
            border-radius: 9999px
        }
        .group_button_bar1{
            width: 172px; 
            height: 1px; 
            left: 1px; 
            top: 51px; 
            position: absolute; 
            background: #D9D9D9
        }
        .group_title1{
            left: 41px; 
            top: 24px; 
            position: absolute; 
            color: black; 
            font-size: 13px; 
            font-family: Inter; 
            font-weight: 400; 
            word-wrap: break-word
        }

        .chatting_print_page{
            width: 866px; 
            height: 613px; 
            left: 215px; 
            top: 60px; 
            position: absolute; 
            background: #ECECEC;
        }
        
        .chat_typing_Round_box{
            width: 865px; 
            height: 59px; 
            left: 217px; 
            top: 672px; 
            position: absolute
        }
        .chat_typing_Round_box_bg{
            width: 865px; 
            height: 59px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
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
            left: 784px; 
            top: 25px; 
            position: absolute;
        }
        .typing_text{
            left: 74px; 
            top: 22px; 
            position: absolute; 
            color: #DBDBDB; 
            font-size: 14px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            word-wrap: break-word;
        }

        /* calendar & Grap */
        .page_title_box{
            width: 125px; 
            height: 40px; 
            left: 40px; 
            top: 0px; 
            position: absolute
        }
        .page_title_box_bg{
            width: 125px; 
            height: 40px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
            background: white
        }
        .page_title{
            left: 3px; 
            top: 5px; 
            position: absolute; 
            color: black; 
            font-size: 25px; 
            font-family: Inter; 
            font-weight: 700; 
            word-wrap: break-word
        }

        .calendar_page_title_box{
            width: 1037px; 
            height: 40px; 
            left: 1px; 
            top: 50px; 
            position: absolute
        }
        .calendar_page_title_box_bg{
            width: 1037px; 
            height: 40px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .from_calendar_to_grap_box{
            width: 1038px; 
            height: 1153px; 
            left: 562px; 
            top: 92px; 
            position: absolute
        }
        .from_calendar_to_grap_box2{
            width: 1038px; 
            height: 1153px; 
            left: 0px; 
            top: 0px; 
            position: absolute
        }
        .from_calendar_to_grap_box_bg{
            width: 1037px; 
            height: 1153px; 
            left: 1px; 
            top: 0px; 
            position: absolute;
            background: white
        }
        .from_calendar_to_grap_boundary{
            width: 1px; 
            height: 1153px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #DBDBDB
        }
        .chart_container{
            width: 997px; 
            height: 400px; 
            left: 41px; 
            top: 753px; 
            position: absolute; 
            background: #dbdbdb
        }
        .calendar_container{
            width: 997px; 
            height: 600px; 
            left: 41px; 
            top: 114px; 
            position: absolute;
        }
        .upbutton_box_round{
            width: 100px; 
            height: 40px; 
            left: 937px; 
            top: 0px;
            position: absolute
        }
        .upbutton_box_round_bg{
            width: 100px; 
            height: 40px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .upbutton_box_bg{
            width: 85px; 
            height: 35px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white; 
            border-radius: 20px;
            border: 1px #DBDBDB solid
        }
        .upbutton_thumbUp{
            width: 20px; 
            height: 20px; 
            left: 20px; 
            top: 8px; 
            position: absolute;
        }
        .upbutton_count{
            width: 20px; 
            height: 20px; 
            left: 45px; 
            top: 6px; 
            position: absolute; 
            background: #DBDBDB; 
        }

        /* footer */
        .footer_box{
            width: 1920px; 
            height: 253px; 
            left: 0px; 
            top: 1411px; 
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
            top: 1411px; 
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
                    <a href="LogoutService.do">로그아웃</a>
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
                                <a href="Login.jsp">로그인</a>
                            </div>
                        </div>
                    </div>
                </a>
            <% } %>
        </div>
        
            <!-- sidebar group -->
            <!-- group -->
            <div class="group_main_box">
                <div class="group_box1"></div>
                <div class="group_box1_groupText_bar"></div>
                <div class="group_box1_groupText">Group</div>
                <img class="produce_group" src="./img/Vector.png"></img>
                
                <div class="group_button" onclick="openNav()">
                    <div class="group_button_bg1"></div>
                    <div class="group_button_profile1"></div>
                <div class="group_button_bar1"></div>
                <div class="group_title1">group1</div>            
            </div>
            
            <!-- <div style="width: 172px; height: 52px; left: 67px; top: 164px; position: absolute; background: white;"  >
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
            </div> -->
            
            
        </div>
        
        <!-- person & chat -->
        <div id="sidebar" class="sidebar" >
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


                </div>
                <div class="group_member_boundaryBar"></div>
                <div class="member_search_Round_box">
                    <div class="member_search_Round_box_bg"></div>
                    <div class="member_searchBox"></div>
                    <img class="member_searchBox_button" src="./img/search2.png"></img>
                </div>
                
                <div class="inside_group_member_box">
                    <div class="inside_group_member_box_bg"></div>
                    <div class="inside_group_member_whiteSpace"></div>
                    <div class="inside_group_member_profile"></div>
                    <div class="inside_group_member_name">Person</div>
                    <div class="inside_group_member_boudary"></div>
                </div>
                
                <!-- me -->
                <div class="myProfile_box">
                    <div class="myProfile_box_bg"></div>
                    <div class="myProfile"></div>
                    <div class="myName">me</div>
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
                </div>
                <div class="searchBar_boundary"></div>


                <!-- 채팅 출력창 -->
                <div class="chatting_print_page"></div>
                
                <!-- 타이핑란 -->
                <div class="chat_typing_Round_box">
                    <div class="chat_typing_Round_box_bg"></div>
                    <div class="chat_typing_box"></div>
                    <img class="chat_photo" src="./img/Photo camera.png"></img>
                    <img class="option" src="./img/option.png"></img>
                    <img class="imoticon" src="./img/imoticon.png"></img>
                    <div class="typing_text">Message</div>
                </div>
                
                
                
                
                <!-- <div style="width: 213px; height: 53px; left: 1px; top: 166px; position: absolute">
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
                </div> -->
            </div>
        </div>
        
        <!-- callender & Grap -->    
        <div class="from_calendar_to_grap_box">
            <div class="from_calendar_to_grap_box2">
                <div class="from_calendar_to_grap_box_bg"></div>
                <div class="from_calendar_to_grap_boundary"></div>
            </div>
            <div class="chart_container" id="chart-container" ></div>
            <div id="calendar-container" class="calendar_container">
                <div id="calendar"></div>
            </div>
            <div class="calendar_page_title_box">
                <div class="calendar_page_title_box_bg"></div>
                <div class="upbutton_box_round">
                    <div class="upbutton_box_round_bg"></div>
                        <div class="upbutton_box_bg">                        
                                <img class="upbutton_thumbUp" src="./img/Thumb up.png"></img>
                                <div class="upbutton_count"></div>                           
                        </div>
                </div>
                <div class="page_title_box">
                    <div class="page_title_box_bg"></div>
                    <div class="page_title">Callender</div>
                </div>
            </div>
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
        <div class="layer"></div>
    </div>


    <script>   

        function openNav() {
            document.getElementById("sidebar").style.width = "1250px";

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

    <!-- jquery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Bootstrap JS (v5) CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <!-- Fullcalendar CDN -->
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
    <!-- Fullcalendar 언어 CDN -->
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script src='fullcalendar/main.js'></script>
	
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');
            var user_schedule = [
                <% 
                    // 세션에서 로그인된 사용자 정보 가져오기
                    String userId = loginMember.getUser_id(); // 로그인된 사용자의 아이디

                    // ScheduleDAO 인스턴스 생성
                    ScheduleDAO scheduleDAO = new ScheduleDAO();

                    // 해당 사용자의 모든 캘린더 정보 가져오기
                    List<Schedule> user_schedule = scheduleDAO.selectAllByUserId(userId);
                    // 가져온 일정 정보 출력
                        
                    for(Schedule event : user_schedule) {
                        String dateString = event.getAth_date(); // 문자열 형식의 날짜
                        
                        // dateString을 FullCalendar에서 요구하는 ISO 8601 형식으로 변환하는 코드
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                        Date date = sdf.parse(dateString);
                      
                       
                %>
                {
                    title: '<%= event.getAth_type() %>',
                    start: '<%= dateString %>'
                },
                <% } %>
            ];
            var calendar = new FullCalendar.Calendar(calendarEl, {
                height: '600px',
                expandRows: true,
                slotMinTime: '08:00',
                slotMaxTime: '20:00',
                headerToolbar: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
                },
                initialView: 'dayGridMonth',
                editable: true,
                selectable: true,
                locale: 'ko',
                dateClick: function(info) {
                    window.open('addschedule.jsp?date=' + info.dateStr, '_blank');
                }
            });
      
            calendar.render();
      
            // 부모 창에서 이벤트 데이터를 받아와서 캘린더에 추가
            window.addEventListener('message', function(event) {
                try {
                    var eventData = JSON.parse(event.data);
                    calendar.addEventSource({
                        events: [{
                            title: eventData.title,
                            start: eventData.scheduleDate
                        }]
                    });
                } catch (e) {
                    console.error("Error parsing event data", e);
                }
            }, false);
        });
      
    </script>

       <script>
        // 예시로 사용할 save_cal 변수 데이터
   var user_calory=[
        <%  List<Calory> user_calory =new CaloryDAO().daycalory(userId);
           System.out.println(user_calory.size());
             // Java 코드로 가져온 user_calory 데이터를 JavaScript 배열로 변환
             for (int i = 0; i < user_calory.size(); i++) {
                 Calory calory = user_calory.get(i);
                 String dateString = calory.getEat_date();
                 int eat_cal = calory.getEat_cal();
         %>
             { date: '<%= dateString %>', calories: <%= eat_cal %> },
         <% } %> // 각 요소 끝에 쉼표 추가
     ];
   console.log(user_calory);
          
   google.charts.load('current', { packages: ['corechart'] });
   google.charts.setOnLoadCallback(drawChart);

   function drawChart() {
       var data = new google.visualization.DataTable();
       data.addColumn('string', 'Date');
       data.addColumn('number', 'Calories');

       // user_calory 배열에서 데이터 행을 추가
       user_calory.forEach(function(item) {
           data.addRow([item.date, item.calories]);
       });

       var options = {
           title: 'Daily Calories Intake',
           curveType: 'none',
           legend: { position: 'bottom' }
       };

       var chart = new google.visualization.LineChart(document.getElementById('chart-container'));
       chart.draw(data, options);
   }


    </script>

</body>
</html>