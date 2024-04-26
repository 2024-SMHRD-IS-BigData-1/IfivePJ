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
            background: #FFFCFC;
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
        }

        /* point */
        .point_round_box{
            width: 175px; 
            height: 60px; 
            left: 59px; 
            top: 233px; 
            position: absolute
        }
        .point_round_box_bg{
            width: 175px; 
            height: 60px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
            background: #FFFCFC
        }
        .point_text_box{
            width: 45px;
            height: 25px; 
            left: 2px; 
            top: 1px; 
            position: absolute
        }
        .point_text_box_bg{
            width: 45px; 
            height: 25px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC
        }
        .point_text{
            left: 0px; 
            top: 0px; 
            position: absolute; 
            color: #797979; 
            font-size: 17px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            word-wrap: break-word
        }
        .point_count_round_box{
            width: 173px; 
            height: 34px; 
            left: 1px; 
            top: 26px; 
            position: absolute
        }
        .point_count_round_box_bg{
            width: 173px; 
            height: 34px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #ECF1EE; 
            border-radius: 5px
        }
        .point_count_box{
            width: 50px; 
            height: 30px; 
            left: 118px; 
            top: 2px; 
            position: absolute
        }   
        .point_count_box_bg{
            width: 50px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #ECF1EE
        }
        
        .point_record{
            left: 0px; 
            top: 2px;
            position: absolute; 
            color: black; 
            font-size: 20px; 
            font-family: Roboto; 
            font-weight: 400; 
            word-wrap: break-word;
        }
        .point_record_P{
            left: 38px; 
            top: 8px; 
            position: absolute; 
            color: #797979; 
            font-size: 18px; 
            font-family: Pretendard-Regular; 
            font-weight: 400; 
            word-wrap: break-word
        }


        /* weight */
        .weight_box{
            width: 148.85px; 
            height: 30px; 
            left: 317px; 
            top: 49px; 
            position: absolute
        }
        .weight_box_bg{
            width: 148.85px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC
        }
        .weight_count_box{
            width: 74.43px; 
            height: 23px; 
            left: 74.43px; 
            top: 4px; 
            position: absolute
        }
        .weight_count_box_bg{
            width: 74.43px; 
            height: 23px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC
        }
        .weight_text_box{
            width: 74.43px;
            height: 23px; 
            left: 0px; 
            top: 4px; 
            position: absolute
        }
        .weight_text_box_bg{
            width: 74.43px; 
            height: 23px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC
        }
        .weight_text{
            width: 73.28px; 
            left: 1.15px; 
            top: 0px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            word-wrap: break-word
        }
        .weight{
            width: 20.61px; 
            left: 31.45px; 
            top: 0px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Roboto; 
            font-weight: 500; 
            word-wrap: break-word;
        }
        .weight_unit{
            width: 19.47px; 
            left: 52.06px; 
            top: 2px; 
            position: absolute; 
            color: #797979; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 400; 
            word-wrap: break-word
        }

        .weight_box_boundary{
            width: 148.85px; 
            height: 1px; 
            left: 0px; 
            top: 29px; 
            position: absolute; 
            background: #DBDBDB
        }

        /* height */
        .height_box{
            width: 151.68px; 
            height: 30px; 
            left: 318.15px; 
            top: 109px; 
            position: absolute
        }
        .height_box_bg{
            width: 148.85px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC
        }
        .height_box_boundary{
            width: 148.85px; 
            height: 1px; 
            left: 0px; 
            top: 29px; 
            position: absolute; 
            background: #DBDBDB
        }
        .height_count_box{
            width: 77.25px; 
            height: 23px; 
            left: 74.43px; 
            top: 4px; 
            position: absolute
        }

        .height_count_box_bg{
            width: 74.43px; 
            height: 23px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC;
        }
        .height_text_box{
            width: 74.43px; 
            height: 23px; 
            left: 0px; 
            top: 4px; 
            position: absolute
        }
        .height_text_box_bg{
            width: 74.43px; 
            height: 23px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC
        }
        .height_text{
            width: 21.76px; 
            left: 43px; 
            top: 0px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            word-wrap: break-word
        }
        .height{
            width: 29.77px; 
            left: 22.29px; 
            top: -1px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Roboto; 
            font-weight: 500; 
            word-wrap: break-word
        }
        .height_unit{
            width: 25.19px; 
            left: 52.06px; 
            top: 0px; 
            position: absolute; 
            color: #797979; 
            font-size: 15px;
            font-family: Pretendard-Regular; 
            font-weight: 400; 
            word-wrap: break-word
        }




        /* goal weight */
        .goal_weight_box{
            width: 148.85px; 
            height: 30px; 
            left: 318.15px; 
            top: 169px; 
            position: absolute
        }
        .goal_weight_box_bg{
            width: 148.85px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC
        }
        .goal_weight_box_boundary{
            width: 148.85px; 
            height: 1px; 
            left: 0px; 
            top: 29px; 
            position: absolute; 
            background: #DBDBDB
        }
        .goal_weight_count_box{
            width: 74.43px; 
            height: 23px; 
            left: 74.43px;
            top: 4px; 
            position: absolute
        }
        .goal_weight_count_box_bg{
            width: 74.43px; 
            height: 23px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC
        }

        .goal_weight{
            width: 20.61px; 
            left: 31.45px; 
            top: -2px; 
            position: absolute; 
            color: black; 
            font-size: 15px; 
            font-family: Roboto; 
            font-weight: 500; 
            word-wrap: break-word;
        }
        .goal_weight_unit{
            width: 19.47px; 
            left: 52.06px;
            top: 0px; 
            position: absolute; 
            color: #797979; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 400; 
            word-wrap: break-word
        }
        .goal_weight_text_box{
            width: 74.43px; 
            height: 23px; 
            left: 0px; 
            top: 4px; 
            position: absolute
        }
        .goal_weight_text_box_bg{
            width: 74.43px; 
            height: 23px; 
            left: 0px; 
            top: 0px;
            position: absolute; 
            background: #FFFCFC
        }
        .goal_weight_text{
            width: 73.28px; 
            left: 1.15px; 
            top: 0px; 
            position: absolute;
            color: black; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 500; 
            word-wrap: break-word
        }


        /* ID */
        .join_id_round_box{
            width: 405px; 
            height: 80px; 
            left: 59px; 
            top: 323px; 
            position: absolute
        }
        .join_id_round_box_bg{
            width: 405px; 
            height: 80px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC
        }
        .join_id_title_box{
            width: 22px; 
            height: 22px; 
            left: 6px; 
            top: 0px; 
            position: absolute
        }
        .join_id_title_box_bg{
            width: 22px; 
            height: 22px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #FFFCFC
        }
        .join_id_title{
            width: 15px; 
            height: 21px; 
            left: 4px; 
            top: 0px; 
            position: absolute; 
            color: #797979; 
            font-size: 15px; 
            font-family: Pretendard-Regular; 
            font-weight: 400; 
            word-wrap: break-word
        }
        .modify_id_box{
            width: 404px; 
            height: 56px; 
            left: 0px; 
            top: 24px; 
            position: absolute
        }
        .modify_id_box_bg{
            width: 404px;
            height: 56px; 
            left: 0px; 
            top: 0px;
            position: absolute; 
            background: #FFFCFC
        }
        .modify_id_boundary{
            width: 404px; 
            height: 1px; 
            left: 0px; 
            top: 55px; 
            position: absolute; 
            background: #DBDBDB
        }
        .modify_id_typing_box{
            width: 384px;
            height: 20px; 
            left: 10px; 
            top: 18px; 
            position: absolute
        }
        .modify_id_typing_box_bg{
            width: 384px; 
            height: 20px; 
            left: 0px; 
            top: 0px;
            position: absolute; 
            background: #FFFCFC
        }

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
        .join_pw_round_box{
            width: 405px; height: 80px; left: 59px; top: 443px; position: absolute
        }
        .join_pw_round_box_bg{
            width: 405px; height: 80px; left: 0px; top: 0px; position: absolute; background: #FFFCFC
        }
        .join_pw_title_box{
            width: 27px; height: 22px; left: 6px; top: 0px; position: absolute
        }
        .join_pw_title_box_bg{
            width: 22px; height: 22px; left: 0px; top: 0px; position: absolute; background: #FFFCFC
        }
        .join_pw_title{
            width: 23px; height: 21px; left: 4px; top: 0px; position: absolute; color: #797979; font-size: 15px; font-family: Pretendard-Regular; font-weight: 400; word-wrap: break-word
        }
        .modify_pw_box{
            width: 404px; height: 56px; left: 0px; top: 24px; position: absolute
        }
        .modify_pw_box_bg{
            width: 404px; height: 56px; left: 0px; top: 0px; position: absolute; background: #FFFCFC
        }
        .modify_pw_boundary{
            width: 404px; height: 1px; left: 0px; top: 55px; position: absolute; background: #DBDBDB
        }
        .modify_pw_typing_box{
            width: 384px; height: 20px; left: 10px; top: 18px; position: absolute
        }
        .modify_pw_typing_box_bg{
            width: 384px; height: 20px; left: 0px; top: 0px; position: absolute; background: #FFFCFC
        }

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

        /* 자기소개 */
        .aboutMe_box{ 
            width: 405px; height: 147px; left: 59px; top: 563px; position: absolute
        }
        .aboutMe_title_round_box{
            width: 405px; height: 31px; left: 0px; top: 0px; position: absolute
        }
        .aboutMe_title_round_box_boundary{
            width: 404px; height: 1px; left: 1px; top: 30px; position: absolute; background: #DBDBDB
        }   
        .aboutMe_title_round_box_bg{
            width: 405px; height: 30px; left: 0px; top: 0px; position: absolute; background: #FFFCFC
        }
        .aboutMe_title_box{
            width: 390px; height: 25px; left: 7px; top: 2px; position: absolute
        }
        .aboutMe_title_box_bg{
            width: 390px; height: 25px; left: 0px; top: 0px; position: absolute; background: #FFFCFC
        }
        .aboutMe_title{
            width: 355px; left: 2px; top: 2px; position: absolute; color: #797979; font-size: 18px; font-family: Inter; font-weight: 400; word-wrap: break-word
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
        .aboutMe_typing_round_box{
            width: 404px; height: 96px; left: 1px; top: 51px; position: absolute
        }
        .aboutMe_typing_round_box_bg{
            width: 404px; height: 96px; left: 0px; top: 0px; position: absolute; background: #FFFCFC; border-radius: 5px; border: 1px #DBDBDB solid
        }
        .aboutMe_typing_box{
            width: 385px; height: 75px; left: 10px; top: 10px; position: absolute
        }  
        .aboutMe_typing_box_bg{
            width: 385px; height: 75px; left: 0px; top: 0px; position: absolute; background: #FFFCFC
        }


        /* update_button */
        .input_update{
        	
            left: -10px; 
            top: 0px; 
            position: absolute;
            background:#CEC1C1;
            border:none;
            font-size:18px;
            font-family: Pretendard-Regular;
            font-weight: 500; 
            word-wrap: break-word;
            cursor:pointer; 
        
        
        }
        .Update_button_box{
            width: 342px; 
            height: 58px; 
            left: 94px; 
            top: 770px; 
            position: absolute;
        }
        .Update_button_box_bg{
            width: 342px; height: 58px; left: 0px; top: 0px; position: absolute; background: #CEC1C1
        }
        .Update_button_text_box{
            width: 70px; height: 30px; left: 136px; top: 14px; position: absolute
        }
        .Update_button_text_box_bg{
            width: 70px; height: 30px; left: 0px; top: 0px; position: absolute; background: #CEC1C1
        }
        .Update_button_text{
            left: 8px; top: 4px; position: absolute; color: black; font-size: 15px; font-family: Pretendard-Regular; font-weight: 500; word-wrap: break-word
        }

        /* footer */
        .footer_box{
            width: 1920px; 
            height: 253px; 
            left: 0px; 
            top: 1244px; 
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
            top: 1244px; 
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
                                <a href="Login.jsp" value="login"></a>
                            </div>
                        </div>
                    </div>
                </a>
            <% } %>
    </div>
 

        <!-- mypage 타이틀 -->
        <div style="width: 120px; height: 57px; left: 900px; top: 135px; position: absolute">
            <div style="width: 120px; height: 57px; left: 0px; top: 0px; position: absolute; background: white"></div>
            <div style="left: 3px; top: 8px; position: absolute; color: black; font-size: 28px; font-family: Pretendard-Regular; font-weight: 700; word-wrap: break-word">My Page</div>
        </div>

        <!-- mypage창 box -->
        <div style="width: 530px; height: 868px; left: 694px; top: 242px; position: absolute">
            <div style="width: 530px; height: 868px; left: 0px; top: 0px; position: absolute; background: #FFFCFC; box-shadow: 20px 20px 4px rgba(0, 0, 0, 0.05); border-radius: 10px; border: 1px #F4F4F4 solid"></div>
            <div style="width: 528px; height: 635px; left: 1px; top: 233px; position: absolute; background: #FFFCFC"></div>
            
            <!-- profile -->
            <div class="profile_box">
                <div class="profile_box_bg"></div>
                <div class="profile"></div>
                <img class="profile_img" src="./img/profile.png"></img>
            </div>
		<form action="mypageService.do" method="post">
            <!-- point -->
            <div class="point_round_box">
                <div class="point_round_box_bg"></div>
                <div class="point_text_box">
                    <div class="point_text_box_bg"></div>
                    <div class="point_text">Point</div>
                </div>
                <div class="point_count_round_box">
                    <div class="point_count_round_box_bg"></div>
                    <div class="point_count_box">
                        <div class="point_count_box_bg"></div>
                        <div class="point_record">150</div>
                        <div class="point_record_P">P</div>
                    </div>
                </div>
            </div>

            <!-- 현재 몸무게 -->
            <div class="weight_box">
                <div class="weight_box_bg"></div>
                <div class="weight_box_boundary"></div>
                <div class="weight_count_box">
                    <div class="weight_count_box_bg"></div>
                    <div class="weight"> <input type="text" name="weight" class="weight_input" style="width: 50px; left: -15px; top: -1px; position: absolute; color: black; font-size: 15px; font-family: Noto Sans KR; font-weight: 500; border: none; outline: none; background:#FFFCFC;" value="<%=loginMember.getUser_weight() %>"></div>
                    <div class="weight_unit">kg</div>
                </div>
                <div class="weight_text_box">
                    <div class="weight_text_box_bg"></div>
                    <div class="weight_text">현재 체중 :</div>
                </div>
            </div>

            <!-- 키 -->
            <div class="height_box">
                <div class="height_box_bg"></div>
                <div class="height_box_boundary"></div>
                <div class="height_count_box">
                    <div class="height_count_box_bg"></div>
                    <div class="height"> <input type="text" name ="height" class="height_input" style="width: 37px; left: -15px; top: -3px; position: absolute; color: black; font-size: 15px; font-family: Roboto; font-weight: 500; border: none; outline: none; background:#FFFCFC;" value="<%=loginMember.getUser_height() %>"></div>
                    <div class="height_unit">cm</div>
                </div>
                <div class="height_text_box">
                    <div class="height_text_box_bg"></div>
                    <div class="height_text">키 :</div>
                </div>
            </div>

            <!-- 목표 체중 -->
            <div class="goal_weight_box">
                <div class="goal_weight_box_bg"></div>
                <div class="goal_weight_box_boundary"></div>
                <div class="goal_weight_count_box">
                    <div class="goal_weight_count_box_bg"></div>
                    <div class="goal_weight"><input type="text" name = "goal_weight" class="goal_weight_input" style="width: 40px; left: -15px; top: -2px; position: absolute; color: black; font-size: 15px; font-family: Roboto; font-weight: 500; border: none; outline: none; background:#FFFCFC;" value="<%=loginMember.getUser_target_weight() %>"></div>
                    <div class="goal_weight_unit">kg</div>
                </div>
                <div class="goal_weight_text_box">
                    <div class="goal_weight_text_box_bg"></div>
                    <div class="goal_weight_text">목표 체중 :</div>
                </div>
            </div>

            <!-- ID -->
            <div class="join_id_round_box">
                <div class="join_id_round_box_bg"></div>
                <div class="join_id_title_box">
                    <div class="join_id_title_box_bg"></div>
                    <div class="join_id_title">ID</div>
                </div>
                <div class="modify_id_box">
                    <div class="modify_id_box_bg"></div>
                    <div class="modify_id_boundary"></div>
                    <div class="modify_id_typing_box">
                        <div class="modify_id_typing_box_bg"></div>
                        <div class="typing_ID"><%=loginMember.getUser_id()%></div>
                    </div>
                </div>
            </div>

            <!-- PW -->
            <div class="join_pw_round_box">
                <div class="join_pw_round_box_bg"></div>
                <div class="join_pw_title_box">
                    <div class="join_pw_title_box_bg"></div>
                    <div class="join_pw_title">PW</div>
                </div>
                <div class="modify_pw_box">
                    <div class="modify_pw_box_bg"></div>
                    <div class="modify_pw_boundary"></div>
                    <div class="modify_pw_typing_box">
                        <div class="modify_pw_typing_box_bg"></div>
                        <div class="typing_PW">PW</div>
                    </div>
                </div>
            </div>

            <!-- 자기소개 -->
            <div class="aboutMe_box">
                <div class="aboutMe_title_round_box">
                    <div class="aboutMe_title_round_box_boundary"></div>
                    <div class="aboutMe_title_round_box_bg"></div>
                    <div class="aboutMe_title_box">
                        <div class="aboutMe_title_box_bg"></div>
                        <div class="aboutMe_title">About Me</div>
                    </div>
                </div>
                <div class="aboutMe_typing_round_box">
                    <div class="aboutMe_typing_round_box_bg"></div>
                    <div class="aboutMe_typing_box">
                        <div class="aboutMe_typing_box_bg"></div>
                        <div class="about_me">Introduction...</div>
                    </div>
                </div>
            </div>

            <!-- Update 버튼 -->
            <div class="Update_button_box">
                <div class="Update_button_box_bg"></div>
                <div class="Update_button_text_box">
                    <div class="Update_button_text_box_bg"></div>
                    <div class="Update_button_text"><input class="input_update" type="submit" value="Update"></div>
                </div>
            </div>
        </div>
      </form>  
        <!-- footer -->
        <div class="footer_box">
            <div class="footer_box_bg">
                <div class="footer_icon_box">
                    <div class="footer_icon_box_bg"></div>
                    <a class="footer_groupBox"  href="groupoffer_main.html" role="button">
                        <div class="footer_groupBg"></div>
                        <div class="footer_groupText">Group</div>
                    </a>
                    <a class="footer_Callender_box" href="callender.html" role="button">
                        <div class="footer_CallenderBg"></div>
                        <div class="footer_CallenderText">Callender</div>
                    </a>
                    <a class="footer_mypage_box" href="mypage.html" role="button">
                        <div class="footer_mypageBg"></div>
                        <div style="left: 7px; top: 2px; position: absolute; color: black; font-size: 16px; font-family: Pretendard-Regular; font-weight: 500; line-height: 16px; word-wrap: break-word">My Page</div>
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
    </div>
    </div>
</body>
</html>