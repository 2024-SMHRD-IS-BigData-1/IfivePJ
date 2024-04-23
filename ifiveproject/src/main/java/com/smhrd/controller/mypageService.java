package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class mypageService implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {

        String weight = request.getParameter("weight");
        String height = request.getParameter("height");
        String goalWeight = request.getParameter("goal_weight");

        // 사용자가 입력한 정보로 Member 객체 생성
        Member myPage = new Member();
        myPage.setUser_height(Float.parseFloat(height));
        myPage.setUser_weight(Float.parseFloat(weight));
        myPage.setUser_target_weight(Float.parseFloat(goalWeight));

        // DAO를 호출하여 데이터베이스에 업데이트 수행
       // int cnt = new MemberDAO().update(myPage);

//        if (cnt > 0) {
//            System.out.println("성공!");
//            return "mypage.jsp";
//        } else {
//            System.out.println("실패..");
//            return "mypage.jsp";
//        }
    }

}
