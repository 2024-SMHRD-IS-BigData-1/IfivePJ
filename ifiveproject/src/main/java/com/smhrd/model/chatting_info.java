package com.smhrd.model;

import java.sql.Date;

//채팅 내용 
public class chatting_info {

 // 채팅 식별자 
 private Double chat_idx;

 // 방 식별자 
 private Double room_idx;

 // 발화자 
 private String chatter;

 // 발화 내용 
 private String chating;

 // 이모티콘 
 private String emoticon;

 // 발화 시간 
 private Date chatted_at;

 public Double getChatIdx() {
     return chat_idx;
 }

 public void setChatIdx(Double chatIdx) {
     this.chat_idx = chat_idx;
 }

 public Double getRoomIdx() {
     return room_idx;
 }

 public void setRoomIdx(Double roomIdx) {
     this.room_idx = room_idx;
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

 public String getEmoticon() {
     return emoticon;
 }

 public void setEmoticon(String emoticon) {
     this.emoticon = emoticon;
 }

 public Date getChattedAt() {
     return chatted_at;
 }

 public void setChattedAt(Date chattedAt) {
     this.chatted_at = chatted_at;
 }

 // chatting_info 모델 복사
 public void CopyData(chatting_info param)
 {
     this.chat_idx = param.getChatIdx();
     this.room_idx = param.getRoomIdx();
     this.chatter = param.getChatter();
     this.chating = param.getChating();
     this.emoticon = param.getEmoticon();
     this.chatted_at = param.getChattedAt();
 }
}