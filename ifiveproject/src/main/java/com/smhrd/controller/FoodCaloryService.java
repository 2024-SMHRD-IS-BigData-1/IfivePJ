package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;
import com.smhrd.frontcontroller.Command;
import com.smhrd.model.FoodCalory;

public class FoodCaloryService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("FoodCaloryService");
		
		String food = request.getParameter("FoodCalory");
		System.out.println(food);
		
		SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
		SqlSession session = sqlSessionFactory.openSession(true);
		FoodCalory foodCalory = session.selectOne("com.smhrd.db.FoodCaloryMapper.Search", food);
		request.setAttribute("foodCalory", foodCalory);
		session.close();
		
		System.out.println(foodCalory.getIntakeCalory());
		
		return null;
	}
}
