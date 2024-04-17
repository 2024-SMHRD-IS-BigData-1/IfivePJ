package com.smhrd.db;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.chatting_info;

public class ChatService {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String chat_idx = request.getParameter("chat_idx");
		String room_idx = request.getParameter("room_idx");
		String chatter= request.getParameter("chatter");
		String chating = request.getParameter("chating");
		String emoticon= request.getParameter("emoticon");
		String chatted_at = request.getParameter("chatted_at");
		
		chatting_info sendChat = new Chat(chat_idx,room_idx,chatter,chating,emoticon,chatted_at);
		
		
		return null;
	}
}
