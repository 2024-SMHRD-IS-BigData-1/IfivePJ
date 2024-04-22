package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;

public class ScheduleService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("ScheduleService");
		
		String exerciseEventTitle = request.getParameter("exerciseEventTitle");
		String foodEventTitle = request.getParameter("foodEventTitle");
		String exercisenameEventTitle = request.getParameter("exercisenameEventTitle");
		
		
		
		
		
		
		return null;
	}

}
