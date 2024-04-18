package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
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
public class Member {
	

	@NonNull private String user_id;
	@NonNull private String user_pw;
	 private float user_height;
	 private float user_weight;
	 private float user_target_weight;
	 private String joined_at;
	 private String user_type;
	 
	 
	public Member(@NonNull String user_id, String user_pw, float user_height, float user_weight,
			float user_target_weight, String user_type) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_height = user_height;
		this.user_weight = user_weight;
		this.user_target_weight = user_target_weight;
		this.user_type = user_type;
	}
	 
	 
	 
	 
	

}
