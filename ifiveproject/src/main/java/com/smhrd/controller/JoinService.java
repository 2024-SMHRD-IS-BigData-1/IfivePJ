package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;


public class JoinService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("joinservice");
		
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_height_str = request.getParameter("user_height");
		String user_weight_str = request.getParameter("user_weight");
		String user_target_weight_str = request.getParameter("user_target_weight");

		// 사용자 입력이 null이 아닌 경우에만 parseInt() 호출
		int user_height = (user_height_str != null && !user_height_str.isEmpty()) ? Integer.parseInt(user_height_str) : 0;
		int user_weight = (user_weight_str != null && !user_weight_str.isEmpty()) ? Integer.parseInt(user_weight_str) : 0;
		int user_target_weight = (user_target_weight_str != null && !user_target_weight_str.isEmpty()) ? Integer.parseInt(user_target_weight_str) : 0;

		String user_type="normal";
		if(user_id.equals("admin")) {
			user_type="admin";
		}
		
		
		System.out.println(user_id+user_pw+user_height+user_weight+user_target_weight+user_type);
		
		Member member = new Member(user_id, user_pw, user_height, user_weight, user_target_weight, user_type);
		
		int cnt = new MemberDAO().join(member);
		
		
			
		if(cnt > 0) {
			System.out.println("회원가입 성공!");
			return "Login.jsp";

		}else {
			System.out.println("회원가입 실패..");
			return "Join.jsp";
		}
				
	}

}
