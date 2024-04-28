package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.JoiningGroup;
import com.smhrd.model.JoiningGroupDAO;

public class GroupPersonListService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("GroupPersonListService");
		//String groupNameOr=request.getParameter("groupName");
		//String group_name=groupNameOr.trim();
		//System.out.println("불러온 그룹 이름:"+group_name);
		
		
		//List<JoiningGroup> GroupPersonList = new JoiningGroupDAO().GroupPersonList(group_name);
		//System.out.println(GroupPersonList.size());
		return null;
	}

}
