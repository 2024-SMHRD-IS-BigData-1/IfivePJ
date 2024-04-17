package frontcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.chatting_info;
import com.smhrd.model.chatting_infoDAO;

import frontcontroller.frontcontroller.Command;

public class ChatService implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		Double chat_idx = Double.parseDouble(request.getParameter("chat_idx")) ;
		Double room_idx = Double.parseDouble(request.getParameter("room_idx"));
		String chatter= request.getParameter("chatter");
		String chating = request.getParameter("chating");
		String emoticon= request.getParameter("emoticon");
		String chatted_at = request.getParameter("chatted_at");
		
		chatting_info sendChat = new chatting_info(chat_idx, room_idx, chatter, chating, emoticon, chatted_at);
		int cnt = new chatting_infoDAO().join(sendChat);
		
		return null;
	}

}
