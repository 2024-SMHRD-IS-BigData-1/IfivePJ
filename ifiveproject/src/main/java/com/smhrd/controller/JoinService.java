package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;


public class JoinService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입 기능
		System.out.println("joinservice");
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id+pw);
		
		// System.out.println(email + pw + tel + address);
		Member member = new Member(id, pw);
		
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
