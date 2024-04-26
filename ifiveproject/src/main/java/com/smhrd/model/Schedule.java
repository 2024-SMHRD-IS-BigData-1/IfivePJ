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
public class Schedule {
	
	@NonNull private int plan_idx;
	@NonNull private String user_id;
	@NonNull private String ath_date;
	@NonNull private String ath_time;
	@NonNull private String ath_type;
	@NonNull private String ath_duration;
	private String created_at;
	private String ath_done;
	private int ath_reward;

	
	
	public Schedule(String user_id, String ath_date, String ath_time, String ath_type,
			String ath_duration, String ath_done, int ath_reward) {
		super();
		this.user_id = user_id;
		this.ath_date = ath_date;
		this.ath_time = ath_time;
		this.ath_type = ath_type;
		this.ath_duration = ath_duration;
		this.ath_done = ath_done;
		this.ath_reward = ath_reward;
	}



	public Schedule(String user_id, String ath_date) {
		super();
		this.user_id = user_id;
		this.ath_date = ath_date;
	}




	

	
	

	
	
	

	
	
	
	

}
