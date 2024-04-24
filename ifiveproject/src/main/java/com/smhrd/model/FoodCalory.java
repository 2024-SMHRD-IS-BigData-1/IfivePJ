package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class FoodCalory {

    private String food_idx;
    @NonNull private String food_name;
    private String intake_weight;
    private int intake_calory;
    

	public FoodCalory(String food_name, int intake_calory) {
		super();
		this.food_name = food_name;
		this.intake_calory = intake_calory;
	}
	
	
	 @Override
	 public String toString() {
	      return "FoodCalory{" +
	                "food_name='" + food_name + '\'' +
	                ", intake_calory=" + intake_calory +
	                '}';
	    }
}
