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
public class athletics_plan_info {
	
	@NonNull private int plan_idx;
	private String user_id;
	private String ath_date;
	private String ath_time;
	private String aht_type;
	private String ath_duration;
	private String created_at;
	private String ath_done;
	private int ath_reward;

}
