package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

/**
 * 
 */
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
public class athletics_plan_info {
	
	private int plan_idx;
	@NonNull private String user_id;
	@NonNull private String ath_date;
	@NonNull private String ath_time;
	@NonNull private String aht_type;
	@NonNull private String ath_duration;
	@NonNull private String created_at;
	@NonNull private String ath_done;
	@NonNull private int ath_reward;
	
	

	
	

}
