package com.smhrd.frontcontroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.controller.IdCheck;
import com.smhrd.controller.ChatService;
import com.smhrd.controller.DietService;
import com.smhrd.controller.FoodCaloryService;
import com.smhrd.controller.JoinService;
import com.smhrd.controller.LoginService;
import com.smhrd.controller.LogoutService;
import com.smhrd.controller.NewgroupService;
import com.smhrd.controller.athletics_plan_infoService;
import com.smhrd.controller.mypageService;


import com.smhrd.controller.ScheduleService;




@WebServlet("*.do")
public class frontcontroller extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("frontcontroller");
		
		
		request.setCharacterEncoding("UTF-8");
		
		String requestURI =  request.getRequestURI();
		
		
		String contextpath =  request.getContextPath();
		
		
		String resultURL = requestURI.substring(contextpath.length() + 1);
		
		Command service = null;
		
		
		
		if(resultURL.equals("JoinService.do")) {
			service = new JoinService();
		}else if(resultURL.equals("ChatService.do")) {
			service = new ChatService();
		}else if(resultURL.equals("LoginService.do")) {
			service= new LoginService();
		}else if(resultURL.equals("IdCheck.do")) {
			service= new IdCheck();
		}else if(resultURL.equals("DietService.do")) {
			service= new DietService();
		}else if(resultURL.equals("FoodCaloryService.do")) {
			service= new FoodCaloryService();
		}else if(resultURL.equals("NewgroupService.do")) {
			service= new NewgroupService();
		}else if (resultURL.equals("athletics_plan_infoService.do")) {
			service= new athletics_plan_infoService();
		}else if(resultURL.equals("ScheduleService.do")) {
			service= new ScheduleService();
		}else if(resultURL.equals("LogoutService.do")) {
			service= new LogoutService();
		}
		
		String moveURL =service.execute(request, response);
		System.out.print(moveURL);
		
		if (moveURL != null) {
		response.sendRedirect(moveURL);
		}
	
	
	}

}
