package com.smhrd.model;

import java.sql.Date;

import org.apache.ibatis.session.SqlSession;

public class chatting_info {


 private Double chat_idx; // 채팅 식별자 
 //private Double room_idx;// 방 식별자 
 private String chatter;// 발화자 
 private String chating; // 발화 내용 
 //private String emoticon;// 이모티콘 
 //private String chatted_at;// 발화 시간 

 
 
 
// 생성자

public chatting_info(String chating) {
	this.chating = chating;
}

@Override
public String toString() {
	return "chatting_info [chat_idx=" + chat_idx + ", chatter=" + chatter + ", chating=" + chating + "]";
}

//get, set 
 public Double getChatIdx() {
     return chat_idx;
 }

 public void setChatIdx(Double chatIdx) {
     this.chat_idx = chat_idx;
 }

 public String getChatter() {
     return chatter;
 }

 public void setChatter(String chatter) {
     this.chatter = chatter;
 }

 public String getChating() {
     return chating;
 }

 public void setChating(String chating) {
     this.chating = chating;
 }

// // chatting_info 모델 복사
// public void CopyData(chatting_info param)
// {
//     this.chat_idx = param.getChatIdx();
//     this.room_idx = param.getRoomIdx();
//     this.chatter = param.getChatter();
//     this.chating = param.getChating();
//     this.emoticon = param.getEmoticon();
//     this.chatted_at = param.getChattedAt();
// }

}