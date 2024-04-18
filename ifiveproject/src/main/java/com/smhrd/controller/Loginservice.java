package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.user_info;
import com.smhrd.model.user_infoDAO;

import frontcontroller.Command;

public class Loginservice implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
	
		// System.out.println(email + pw);
		
		user_info member = new user_info(email, pw, null, null, null, null, pw);
		
		user_info loginMember = new user_infoDAO().login(member);
		
		if(loginMember != null) {
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
		}else {
			System.out.println("로그인 실패..");
		}
		
	//	response.sendRedirect("Main.jsp");
		
		return "Main.jsp";
	}

}
