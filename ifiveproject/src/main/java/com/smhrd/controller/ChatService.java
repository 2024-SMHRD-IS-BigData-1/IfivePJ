package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Member;
import com.smhrd.model.chatting_info;
import com.smhrd.model.chatting_infoDAO;

public class ChatService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		Member logiMember2Member = (Member) session.getAttribute("loginMember");
		String chatting = request.getParameter("message");
		System.out.println(chatting);
		
		
		chatting_info sendChat= new chatting_info();
		sendChat.setChatting(chatting);
		sendChat.setChatter(logiMember2Member.getUser_id());
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
