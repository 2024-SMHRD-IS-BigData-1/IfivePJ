package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class IdCheck implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String input_id = request.getParameter("input_id");
		System.out.println("IdCheck");
		
		Member member = new MemberDAO().idCheck(input_id);
		PrintWriter out;
		
		try {
			out = response.getWriter();
			if(member == null) {
				out.print(true);
			}else {
				out.print("false");
			}
		} catch (IOException e) {

			e.printStackTrace();
		}
			
		return null;
	}

}
