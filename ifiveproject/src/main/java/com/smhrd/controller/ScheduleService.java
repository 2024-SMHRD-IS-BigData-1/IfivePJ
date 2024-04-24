

package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Schedule;
import com.smhrd.model.ScheduleDAO;

public class ScheduleService implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {

    	

        System.out.println("ScheduleService");
        
       
        String user_id = (String) request.getSession().getAttribute("user_id");
        String ath_type = request.getParameter("title");
        String ath_date = request.getParameter("date");
        String ath_time = request.getParameter("time");
        String ath_duration = request.getParameter("duration");
		String ath_done = request.getParameter("checkbox");

		System.out.println(user_id);
		
		
		
        System.out.println(ath_type+ath_date+ath_duration+ath_time+user_id);

        


        ath_done= "O";
        int ath_reward =0;
        
        System.out.println(user_id);
        System.out.println("input");
        Schedule schedule= new Schedule(user_id, ath_date, ath_time, ath_type, ath_duration, ath_done, ath_reward);
        int cnt = new ScheduleDAO().join(schedule);
       
		List<Schedule> events = ScheduleDAO.selectAllByUserId(user_id);
        
        
 
        
        PrintWriter out;
        try {
			out = response.getWriter();
			if(cnt > 0) {
				System.out.println("일정추가 성공!");
				out.print(true);
				
			}else {
				System.out.println("일정추가 실패..");
				out.print(false);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
        
        
		return null;
        
    }

}
