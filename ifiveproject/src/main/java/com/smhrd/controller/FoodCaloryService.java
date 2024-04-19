package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;
import com.smhrd.frontcontroller.Command;
import com.smhrd.model.FoodCalory;
import com.smhrd.model.FoodCaloryDAO;
import com.smhrd.model.MemberDAO;

public class FoodCaloryService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("FoodCaloryService");
		
		String food = request.getParameter("FoodCalory");
		System.out.println(food);
		
		
		FoodCalory food_find = new FoodCalory(food)
		int cnt = new FoodCaloryDAO().search(food_find );
		

		return null;
	}
}
