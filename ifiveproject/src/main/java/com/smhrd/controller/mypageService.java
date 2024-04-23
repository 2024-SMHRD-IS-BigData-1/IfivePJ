package com.smhrd.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.mypage;
import com.smhrd.model.mypageDAO;

public class mypageService implements Command {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {

      
      String weight = request.getParameter("weight");
      String height = request.getParameter("height");
      String goal_weight = request.getParameter("goal_weight");
  
      mypage myPage = new mypage();
      myPage.setUser_height(Integer.parseInt(height));
      myPage.setUser_height(Integer.parseInt(weight));
      myPage.setUser_height(Integer.parseInt(goal_weight));
      
      
   
      
      System.out.println(weight+height+goal_weight);
      

      
      int cnt = new mypageDAO().update(myPage);
      
      if(cnt > 0) {
         System.out.println("성공!");
         
         request.setAttribute("currentWeight", myPage.getUser_weight());
         return "mypage.jsp";

      }else {
         System.out.println("실패..");
         return "mypage.jsp";
      }
      
      
      
   }

}