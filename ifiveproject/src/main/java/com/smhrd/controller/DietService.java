package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Diet;
import com.smhrd.model.DietDAO;

public class DietService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String diet_idx= request.getParameter("diet_idx");
		String user_id= request.getParameter("user_id");
		String food_idx= request.getParameter("food_idx");
		float intake_weight= Float.parseFloat( request.getParameter("intake_weight"));
		int intake_calory= Integer.parseInt(request.getParameter("diet")) ;
		String created_at= request.getParameter("diet");
		
		System.out.println(diet_idx+user_id+food_idx+intake_weight+intake_calory+ created_at);
		
		Diet Diet = new Diet(diet_idx,user_id,food_idx,intake_weight,intake_calory,created_at);
		int cnt = new DietDAO().join(Diet);
		if(cnt > 0) {
			System.out.println("음식기록 완료");
		}else {
			System.out.println("음식기록 실패");
		}
		return null;
	}

}
