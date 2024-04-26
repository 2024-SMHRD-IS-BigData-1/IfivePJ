package com.smhrd.controller;

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
	    double height = Double.parseDouble(request.getParameter("height")) ;
	    double goal_weight = Double.parseDouble(request.getParameter("goal_weight")) ;
	    double weight = Double.parseDouble(request.getParameter("weight")) ;
	    
	    System.out.println(height+goal_weight+weight);
	    // mypage 객체 생성 및 값 설정
	    mypage myPage = new mypage(member.getUser_id(), null, (int) height, (int) weight, (int) goal_weight);

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
