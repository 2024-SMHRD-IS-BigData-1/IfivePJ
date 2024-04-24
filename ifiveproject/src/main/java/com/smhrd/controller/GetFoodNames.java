package com.smhrd.controller;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper; // Jackson 라이브러리 추가
import com.smhrd.frontcontroller.Command;
import com.smhrd.model.FoodCalory;
import com.smhrd.model.FoodCaloryDAO;

public class GetFoodNames implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("calory");
        
        String food_name = request.getParameter("keyword");
        
//        System.out.println(food_name);
        
//        FoodCalory food = new FoodCalory(food_name);
        
        
        List<FoodCalory> foodList = new FoodCaloryDAO().foodList(food_name);

        
        // Jackson ObjectMapper를 사용하여 객체를 JSON 문자열로 변환
        ObjectMapper objectMapper = new ObjectMapper();
        String jsonResults = "";
        try {
            jsonResults = objectMapper.writeValueAsString(foodList);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        // 클라이언트로 JSON 형식의 응답 전송
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        try {
            PrintWriter out = response.getWriter();
            out.print(jsonResults);
            out.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }
}
