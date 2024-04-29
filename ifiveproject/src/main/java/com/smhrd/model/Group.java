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

public class Group {
	 @NonNull private String group_idx; // 그룹 식별자 
	 private String user_id; // 회원 아이디 
	 private String group_name; // 그룹 명 
	 private String group_info; // 그룹 설명 
	 private int group_limit; // 그룹 인원수 
	 private String created_at;  // 등록 일자 
	 private String group_status; // 그룹 상태
	 
	 
	public Group(String user_id, String group_name, String group_info, int group_limit, String group_status) {
		super();
		
		// id도 넣으려면 위에 string user_id 추가하고 
		this.user_id = user_id;
		this.group_name = group_name;
		this.group_info = group_info;
		this.group_limit = group_limit;
		this.group_status = group_status;
	}
	 
	 
	 
}
