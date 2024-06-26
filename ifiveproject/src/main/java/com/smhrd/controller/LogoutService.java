package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.Command;

public class LogoutService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=  request.getSession();
		session.removeAttribute("loginMember");
		
		//response.sendRedirect("Main.jsp");
		return "Main.jsp";
	}

}
