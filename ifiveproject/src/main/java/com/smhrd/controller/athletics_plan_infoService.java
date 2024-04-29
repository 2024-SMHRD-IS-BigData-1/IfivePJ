package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.athletics_plan_info;
import com.smhrd.model.athletics_plan_infoDAO;

public class athletics_plan_infoService implements Command {

    public String execute(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("athletics_plan_infoService");

        try {
            int plan_idx = Integer.parseInt(request.getParameter("plan_idx"));
            String user_id = request.getParameter("user_id");
            String ath_date = request.getParameter("ath_date");
            String ath_time = request.getParameter("ath_time");
            String ath_duration = request.getParameter("ath_duration");
            String created_at = request.getParameter("created_at");
            String ath_done = request.getParameter("ath_done");
            int ath_reward = Integer.parseInt(request.getParameter("ath_reward"));
            
            if (created_at != null && !created_at.isEmpty()) {
                ath_reward += 10;
            }
            
            System.out.println("리워드"+ath_reward);

            athletics_plan_info ath = new athletics_plan_info(plan_idx, user_id, ath_date, ath_time, ath_duration, created_at, ath_done, ath_done, ath_reward);

            System.out.println(plan_idx + user_id + ath_date + ath_time + ath_duration + created_at + ath_done + ath_done + ath_reward);

            athletics_plan_infoDAO dao = new athletics_plan_infoDAO();
            int cnt = dao.insert(ath);

            if (cnt > 0) {
                System.out.println("DB 성공");
            } else {
                System.out.println("DB 실패");
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            System.out.println("파라미터 변환 오류");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("DB 처리 중 오류 발생");
        }

        return "cal.jsp";
    }
}
