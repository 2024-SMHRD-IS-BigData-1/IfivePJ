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
public class Diet {

		// 섭취 식별자 
		 @NonNull private int diet_idx;
		 @NonNull private String user_id;
		 @NonNull private String food_name;
		private String intake_weight;
	    private int intake_calory;
	    @NonNull private String eat_date;
	    
	    
	    public Diet(String user_id, String food_name, String intake_weight, int intake_calory, String eat_date) {
	    	super();
	    	this.user_id = user_id;
	    	this.food_name = food_name;
	    	this.intake_weight = intake_weight;
	    	this.intake_calory = intake_calory;
	    	this.eat_date = eat_date;
	    }


		public Diet(String user_id, String eat_date) {
			super();
			this.user_id = user_id;
			this.eat_date = eat_date;
		}
	    
	    

   
	
}
