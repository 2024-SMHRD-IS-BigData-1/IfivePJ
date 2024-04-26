package com.smhrd.model;

import java.sql.Date;

import org.apache.ibatis.session.SqlSession;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;


@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
public class chatting_info {


    @NonNull private String chat_idx;
    private String group_name;
    private String chatter;
    private String chating;
    private String chatted_at;
    
    
	public chatting_info(String group_name, String chatter, String chating) {
		super();
		this.group_name = group_name;
		this.chatter = chatter;
		this.chating = chating;
	}
 
    
}