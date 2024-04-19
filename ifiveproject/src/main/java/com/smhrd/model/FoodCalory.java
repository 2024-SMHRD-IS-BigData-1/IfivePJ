package com.smhrd.model;

public class FoodCalory {

	    private String food_idx;
	    private String food_name;
	    private String intake_weight;
	    private int intake_calory;
	    public String getFoodIdx() {
	        return food_idx;
	    }

	    public FoodCalory(String food_idx, String food_name, float intake_weight, int intake_calory) {
			super();
			this.food_idx = food_idx;
			this.food_name = food_name;
			this.intake_weight = intake_weight;
			this.intake_calory = intake_calory;
		}

		public void setFoodIdx(Double foodIdx) {
	        this.food_idx = food_idx;
	    }

	    public String getFoodName() {
	        return food_name;
	    }

	    public void setFoodName(String foodName) {
	        this.food_name = food_name;
	    }

	    public String getIntakeWeight() {
	        return intake_weight;
	    }

	    public void setIntakeWeight(Double intakeWeight) {
	        this.intake_weight = intake_weight;
	    }

	    public int getIntakeCalory() {
	        return intake_calory;
	    }

	    public void setIntakeCalory(Double intakeCalory) {
	        this.intake_calory = intake_calory;
	    }

		
}
