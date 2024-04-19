package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;

public class athletics_plan_infoService implements Command {

	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("athletics_plan_infoService");
		
		int plan_idx = Integer.parseInt (request.getParameter("plan_idx"));
		String user_id = request.getParameter("user_id");
		String ath_date = request.getParameter("ath_date");
		String ath_time = request.getParameter("ath_time");
		String ath_duration = request.getParameter("ath_duration");
		String created_at = request.getParameter("created_at");
		String ath_done = request.getParameter("ath_done");
		int ath_reward =Integer.parseInt (request.getParameter("ath_reward"));
		
		
		
		return null;
	}

}
