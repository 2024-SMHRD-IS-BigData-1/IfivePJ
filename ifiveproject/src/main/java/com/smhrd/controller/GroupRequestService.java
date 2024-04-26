package com.smhrd.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Group;
import com.smhrd.model.GroupDAO;
import com.smhrd.model.JoiningGroup;
import com.smhrd.model.JoiningGroupDAO;

public class GroupRequestService implements Command {

    public String execute(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("GroupRequestService");

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
            String group_name = groupNameor.trim();
            String groupInfoor = jsonObject.getString("groupInfo");
            String group_info = groupInfoor.trim();
            
            String groupLimitor = jsonObject.getString("groupLimit");
            String group_limit2 = groupLimitor.trim();
            int group_limit = Integer.parseInt(group_limit2);
            String user_id = jsonObject.getString("user_id");
            String group_status = "활동중";
            String confirm_yn= "y";

            System.out.println(group_name+ group_info+group_limit);
            System.out.println("User ID: " + user_id);
        	
            //Group group = new Group(user_id, group_name, group_info, group_limit, group_status);
            //int cnt = new GroupDAO().join(group);
            
            JoiningGroup JoiningGroup = new JoiningGroup(user_id, confirm_yn,group_name);
            int cnt = new JoiningGroupDAO().join(JoiningGroup);
            
            if(cnt>0) {
            	System.out.println("그룹 가입 성공");
            	request.setAttribute("JoiningGroup", JoiningGroup);
            	// request.setAttribute("group", group);
            	
            }else {
            	System.out.println("그룹 가입 실패");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }
}
