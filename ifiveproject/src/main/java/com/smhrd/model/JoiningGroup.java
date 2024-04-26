package com.smhrd.model;

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
public class JoiningGroup {
	@NonNull String join_idx;
    private String user_id;
    private String apply_date;
    private String confirm_yn;
    private String group_idx;
    
    public JoiningGroup(String user_Id, String confirm_yn) {
		super();
    	this.user_id = user_Id;
		this.confirm_yn= confirm_yn;
		this.group_idx= group_idx;
    }


}
