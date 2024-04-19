package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;

public class FoodCaloryService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("FoodCaloryService");
		
		String food = request.getParameter("FoodCalory");
		
		return null;
	}

}
