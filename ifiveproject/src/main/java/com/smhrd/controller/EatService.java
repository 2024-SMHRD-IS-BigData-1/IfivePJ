package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;

public class EatService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String eat_food = request.getParameter("food_name");
		String eat_cal = request.getParameter("intake_calory");
		
		System.out.println(eat_food+eat_cal);
		
		
		
		
		return null;
	}

}
