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
    
	
    private String room_idx;
    @NonNull private String user_id;
    private String group_name;
    private String group_info;
    private int group_limit;
    private String opened_at;
    private String group_status;
    
    public chattingRoom(String user_id, String group_name, String group_info, int group_limit, String group_status) {
        this.user_id=user_id;
        this.group_name=group_name;
        this.group_info=group_info;
        this.group_limit=group_limit;
        this.group_status=group_status;
    }
}
