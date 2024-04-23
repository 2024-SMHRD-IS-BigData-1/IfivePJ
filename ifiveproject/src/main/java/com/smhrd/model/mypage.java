package com.smhrd.model;

import java.sql.Date;

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
public class mypage {

	 private String user_id;
	 private String user_pw;
	@NonNull private int user_height;
	@NonNull private int user_weight;
	@NonNull private int user_target_weight;
	
}
