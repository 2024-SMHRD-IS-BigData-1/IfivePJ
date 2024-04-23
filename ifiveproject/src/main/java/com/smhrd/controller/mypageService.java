package com.smhrd.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Member;
import com.smhrd.model.mypage;
import com.smhrd.model.mypageDAO;

public class mypageService implements Command {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {
	    // 세션에서 로그인한 사용자 정보 가져오기
	    Member member = (Member) request.getSession().getAttribute("loginMember");

	    // 사용자의 키와 목표 체중 가져오기
	    String height = request.getParameter("height");
	    String goal_weight = request.getParameter("goal_weight");
	    String weight = request.getParameter("weight");
	    

	    // mypage 객체 생성 및 값 설정
	    mypage myPage = new mypage();
	    myPage.setUser_id(member.getUser_id()); // 사용자 ID 설정
	    myPage.setUser_height(Integer.parseInt(height)); // 사용자 키 설정
	    myPage.setUser_weight(Integer.parseInt(weight)); // 사용자 현재 체중 설정
	    myPage.setUser_target_weight(Integer.parseInt(goal_weight)); // 사용자 목표 체중 설정

	    // mypageDAO를 통해 데이터베이스 업데이트 수행
	    int cnt = new mypageDAO().update(myPage);

	    if(cnt > 0) {
	        System.out.println("성공!");
	        return "mypage.jsp";
	    } else {
	        System.out.println("실패..");
	        return "mypage.jsp";
	    }
	}
}