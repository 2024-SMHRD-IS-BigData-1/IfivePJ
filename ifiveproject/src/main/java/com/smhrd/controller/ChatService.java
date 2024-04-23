package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.chatting_info;
import com.smhrd.model.chatting_infoDAO;

public class ChatService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
        String user_id = (String) request.getSession().getAttribute("user_id");
		String chating = request.getParameter("message");
		System.out.println(chating);
		
		
		
		chatting_info sendChat = new chatting_info(chating);
		
		System.out.println(sendChat.toString());
		
		int cnt = new chatting_infoDAO().join(sendChat);
		
		
		
		if(cnt>0) {
			System.out.println("채팅 디비 들어갔음");
		}else {
			System.out.println("채팅 디비 안들어감 ㅠㅠ");
		}
		return null;
	}

}
