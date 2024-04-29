package com.smhrd.model;

import java.sql.Date;

import org.apache.ibatis.session.SqlSession;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
@ToString
public class chatting_info {

	@NonNull private String chat_idx;
    // private String group_name;
    private String chatter;
    private String chatting;
    // private String chatted_at;
    
//	public chatting_info(String chatting) {
//		super();
//		this.chatting = chatting;
//	}
    
    
}