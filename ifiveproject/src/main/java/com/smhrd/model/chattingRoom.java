package com.smhrd.model;

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
public class chattingRoom {
	
	@NonNull String room_idx;
    private String user_id;
    private String room_title;
    private String room_info;
    private int room_limit;
    private String opened_at;
    private String room_status;
    
    public chattingRoom(String user_id, String room_title, String room_info, int room_limit, String room_status) {
    	this.user_id=user_id;
    	this.room_title=room_title;
    	this.room_info=room_info;
    	this.room_limit=room_limit;
    	this.room_status=room_status;
    	
    }


}
