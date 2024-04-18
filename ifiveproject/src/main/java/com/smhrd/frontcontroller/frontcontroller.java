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
import com.smhrd.controller.JoinService;



@WebServlet("*.do")
public class frontcontroller extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("[frontController]");
		
		request.setCharacterEncoding("UTF-8");
		
		String requestURI =  request.getRequestURI();
		
		String contextpath =  request.getContextPath();
		
		String resultURL = requestURI.substring(contextpath.length() + 1);
		
		Command service = null;
		
		
		
		if(resultURL.equals("JoinService.do")) {
			service = new JoinService();
		}
		 	
		String moveURL =service.execute(request, response);
		
		if (moveURL != null) {
		response.sendRedirect(moveURL);
		}
	
	
	}

}
