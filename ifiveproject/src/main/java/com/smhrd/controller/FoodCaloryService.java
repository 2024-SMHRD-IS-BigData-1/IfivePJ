package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.FoodCalory;
import com.smhrd.model.FoodCaloryDAO;

public class FoodCaloryService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("FoodCaloryService");
		
		String food_name = request.getParameter("FoodCalory");
		System.out.println(food_name);
		
		FoodCalory food_search = new FoodCalory(food_name);
		
		FoodCalory food_find = new FoodCaloryDAO().Search(food_search);
		
		if(food_find !=null) {
			System.out.println("음식 찾기 성공");
			HttpSession session = request.getSession();
			session.setAttribute("food_find", food_find);
		}else {
			System.out.println("음식 찾기 실패");
		}
		return "schedule.jsp";
	}
}
