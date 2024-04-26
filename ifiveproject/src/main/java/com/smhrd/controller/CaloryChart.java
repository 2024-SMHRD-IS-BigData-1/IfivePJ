package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Calory;
import com.smhrd.model.CaloryDAO;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class CaloryChart implements Command {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
				
        String user_id = (String) request.getSession().getAttribute("user_id");
        int eat_cal = Integer.parseInt(request.getParameter("eat_cal"));
        
        String eat_date = request.getParameter("eat_date");
        
        System.out.println(user_id+eat_cal+eat_date);
       
        Calory daycal = new Calory(user_id, eat_date, eat_cal);
        
 		
		int cnt = new CaloryDAO().join(daycal);
		
		
			
		if(cnt > 0) {
			System.out.println("칼로리 추가  성공!");

		}else {
			System.out.println("칼로리 추가  실패..");
		}
			
		return null;
	}

}
