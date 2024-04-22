package com.smhrd.model;


public class Diet {

	    // 섭취 식별자 
	    private String diet_idx;
	    private String user_id;
	    private String food_idx;
	    private float intake_weight;
	    private int intake_calory;
	    private String created_at;
	    
	    
	    public Diet(String diet_idx, String user_id, String food_idx, float intake_weight, int intake_calory,
				String created_at) {
			super();
			this.diet_idx = diet_idx;
			this.user_id = user_id;
			this.food_idx = food_idx;
			this.intake_weight = intake_weight;
			this.intake_calory = intake_calory;
			this.created_at = created_at;
		}

		public String getDietIdx() {
	        return diet_idx;
	    }

	    public void setDietIdx(Double dietIdx) {
	        this.diet_idx = diet_idx;
	    }

	    public String getUserId() {
	        return user_id;
	    }

	    public void setUserId(String userId) {
	        this.user_id = user_id;
	    }

	    public String getFoodIdx() {
	        return food_idx;
	    }

	    public void setFoodIdx(Double foodIdx) {
	        this.food_idx = food_idx;
	    }

	    public float getIntakeWeight() {
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

	    public String getCreatedAt() {
	        return created_at;
	    }

	    public void setCreatedAt(String createdAt) {
	        this.created_at = created_at;
	    }
   
	
}
