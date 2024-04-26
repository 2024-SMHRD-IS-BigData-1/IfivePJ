package com.smhrd.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.JoiningGroup;

public class GroupRequestService implements Command {

    public String execute(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("GroupRequestService2");

        try {
            // 요청의 body에서 JSON 데이터 읽기
            BufferedReader reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
            StringBuilder jsonBody = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                jsonBody.append(line);
            }

            // JSON 데이터 파싱
            JSONObject jsonObject = new JSONObject(jsonBody.toString());
            String groupNameor = jsonObject.getString("groupName");
            String groupName = groupNameor.trim();
            String user_Id = jsonObject.getString("userId");
            String group_idx = jsonObject.getString("group_idx");
            String confirm_yn= "y";

            System.out.println("Group Name: " + groupName);
            System.out.println("User ID: " + user_Id);
            System.out.println("group_idx: " + group_idx);
        	
            JoiningGroup JoiningGroup = new JoiningGroup(user_Id, confirm_yn);
            
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }
}
