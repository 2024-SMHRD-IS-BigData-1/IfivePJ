package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Diet;
import com.smhrd.model.DietDAO;

public class DietService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("diet");
		String food_name = request.getParameter("food_name");
		int intake_calory = Integer.parseInt(request.getParameter("intake_calory"));
        String eat_date = request.getParameter("date");              
        String user_id = (String) request.getSession().getAttribute("user_id");
        String intake_weight = "300g";
     
        System.out.println(eat_date);
        System.out.println(user_id +food_name+intake_calory+intake_weight);

       
        Diet eat_food = new Diet(user_id,food_name,intake_weight,intake_calory,eat_date);                      
        int cnt = new DietDAO().add(eat_food);
        
        if(cnt > 0) {
           System.out.println("음식기록 완료");
			HttpSession session = request.getSession();
			session.setAttribute("eat_food", eat_food);
        }else {
           System.out.println("음식기록 실패");
        }
        return null;

	}

}
