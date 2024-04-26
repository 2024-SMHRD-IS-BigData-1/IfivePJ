package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.ScheduleDAO;

public class DeleteSchedule implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("deleteschedule");
		String ath_date = request.getParameter("ath_date");	
		System.out.println(ath_date);
		int plan_idx = Integer.parseInt(request.getParameter("plan_idx"));
		new ScheduleDAO().deleteSchedule(plan_idx);		
		return"schedule_final.jsp?date=" + ath_date;
		
		
	}

}
