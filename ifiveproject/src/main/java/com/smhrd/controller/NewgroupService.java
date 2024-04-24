package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Group;
import com.smhrd.model.GroupDAO;

public class NewgroupService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("NewgroupService");
		
		String group_name = request.getParameter("group_name");
		String group_info = request.getParameter("group_info");
		int group_limit= Integer.parseInt(request.getParameter("group_limit"));
		
//		 HttpSession session = request.getSession();
//	     String user_id = (String) session.getAttribute("user_id");
	    
		String user_id="test1";
		String group_status = "활동중?";
		
		System.out.println(group_name+group_info+group_limit);
		
		
		Group group = new Group(user_id, group_name, group_info, group_limit,group_status);
		
		int cnt = new GroupDAO().join(group);
		
		
	
		if(cnt > 0) {
			System.out.println("그룹 생성 성공!");
			request.setAttribute("group", group);
			return "group.jsp";

		}else {
			System.out.println("회원가입 실패..");
			return null;
		}
	     
		
	}

}
