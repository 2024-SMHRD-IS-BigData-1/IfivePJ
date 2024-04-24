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
    
    // 'food' 속성에 대한 getter 메서드 추가
    public String getFood() {
        return food_name;
    }
}
