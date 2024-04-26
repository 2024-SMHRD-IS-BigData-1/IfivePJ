package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Group;
import com.smhrd.model.GroupDAO;
import com.smhrd.model.JoiningGroup;
import com.smhrd.model.JoiningGroupDAO;
import com.smhrd.model.chattingRoom;
import com.smhrd.model.chattingRoomDAO;

public class NewgroupService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("NewgroupService");

        HttpSession session = request.getSession();
        String user_id = (String) session.getAttribute("user_id");
        // String user_id="test1";
        String group_name = request.getParameter("group_name");
        String group_info = request.getParameter("group_info");
        int group_limit = Integer.parseInt(request.getParameter("group_limit"));
        String group_status = "활동중";
        System.out.println(group_name + group_info + group_limit);
        String confirm_yn= "y";

        // 그룹과 그룹가입을 동시에 생성합니다.
        Group group = new Group(user_id, group_name, group_info, group_limit, group_status);
        int cnt1 = new GroupDAO().join(group);
        
        //chattingRoom chattingRoom = new chattingRoom(user_id, group_name, group_info, group_limit, group_status);
        //int cnt2 = new chattingRoomDAO().join(chattingRoom);
        JoiningGroup JoiningGroup = new JoiningGroup(user_id, confirm_yn,group_name);
        int cnt2 = new JoiningGroupDAO().join(JoiningGroup);

        if (cnt1 > 0 && cnt2 > 0) {
            System.out.println("그룹 및 채팅방 생성 성공!");
            request.setAttribute("group", group);
            request.setAttribute("JoiningGroup", JoiningGroup);
            return "group.jsp";
        } else {
            System.out.println("그룹 또는 채팅방 생성 실패");
            return null;
        }
		
	}

}
