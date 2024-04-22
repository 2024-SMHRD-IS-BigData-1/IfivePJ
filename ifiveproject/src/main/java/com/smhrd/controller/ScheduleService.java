

package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Schedule;
import com.smhrd.model.ScheduleDAO;

public class ScheduleService implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
    		

        System.out.println("ScheduleService");

        // 클라이언트로부터 전송된 데이터 읽기
        String ath_type = request.getParameter("title");
        String ath_date = request.getParameter("start");
        String ath_duration = request.getParameter("end");
        System.out.println(ath_type+ath_date+ath_duration);

        
        int plan_idx=123;
        String user_id= "test1";
        String ath_time ="11시";
        String ath_done = "o";
        int ath_reward =0;
        

        
        Schedule exercise= new Schedule(plan_idx, user_id, ath_date,ath_time, ath_type,ath_duration, ath_done,  ath_reward);
        
        
        
        
        int cnt = new ScheduleDAO().join(exercise);
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
		return null;
        
    }

}
