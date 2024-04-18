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
		float user_height = Float.parseFloat(request.getParameter("user_height")) ;
		float user_weight = Float.parseFloat(request.getParameter("user_weight")) ;
		float user_target_weight = Float.parseFloat(request.getParameter("user_target_weight")) ;

		String user_type="normal";
		if(user_id.equals("admin")) {
			user_type="admin";
		}
		
		
		System.out.println(user_id+user_pw+user_height+user_weight+user_target_weight+user_type);
		
		Member member = new Member(user_id, user_pw, user_height, user_weight, user_target_weight, user_type);
		
		int cnt = new MemberDAO().join(member);
			
		if(cnt > 0) {
			System.out.println("회원가입 성공!");
			return "intro.jsp";

		}else {
			System.out.println("회원가입 실패..");
			return "intro.jsp";
		}
				
	}

}
