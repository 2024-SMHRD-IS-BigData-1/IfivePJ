package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class LoginService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("LoginService");
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		Member member = new Member(user_id, user_pw);
					
		Member loginMember = new MemberDAO().login(member);
					
		if(loginMember != null) {
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			return "cal.html";
			
		}else {
			System.out.println("로그인 실패");
			return "Login.jsp";
		}	
		
	}

}
