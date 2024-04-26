package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.DietDAO;

public class DeleteFood implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("deleteschedule");
		String eat_date = request.getParameter("eat_date");	
		System.out.println(eat_date);
		int diet_idx = Integer.parseInt(request.getParameter("diet_idx"));
		new DietDAO().deleteDiet(diet_idx);		
		return"schedule_final.jsp?date=" + eat_date;
	}

}