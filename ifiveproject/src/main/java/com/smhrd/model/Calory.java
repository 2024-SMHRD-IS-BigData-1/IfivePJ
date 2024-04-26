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
public class Calory {


		// 섭취 식별자 
		private String user_id;
		@NonNull private String eat_date;
		@NonNull private int eat_cal;
		private String created_date;
		
		
		
		public Calory(String user_id, @NonNull String eat_date, @NonNull int eat_cal) {
			super();
			this.user_id = user_id;
			this.eat_date = eat_date;
			this.eat_cal = eat_cal;
		}
		
	    

   
	
}
