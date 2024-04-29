package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.Schedule;
import com.smhrd.model.ScheduleDAO;

public class ScheduleService implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("ScheduleService");

        // 세션에서 사용자 아이디를 가져옵니다.
        String user_id = (String) request.getSession().getAttribute("user_id");
        // 요청 파라미터에서 일정 정보를 가져옵니다.
        String ath_type = request.getParameter("title");
        String ath_date = request.getParameter("date");
        String ath_time = request.getParameter("time");
        String ath_duration = request.getParameter("duration");
        String ath_done = request.getParameter("checkbox");
        int ath_reward = 0;

        // ath_date 값이 있을 때에만 리워드를 10 증가시킵니다.
        if (ath_date != null && !ath_date.isEmpty()) {
            ath_reward += 10;
        }

        System.out.println(ath_type + ath_date + ath_duration + ath_time + user_id);
        System.out.println("리워드" + ath_reward);

        ath_done = "O";

        System.out.println(user_id);
        System.out.println("input");

        // 리워드를 +10 해주었습니다.
        ath_reward += 10;

        // ath_reward를 변경한 이후에 Schedule 객체를 생성합니다.
        Schedule schedule = new Schedule(user_id, ath_date, ath_time, ath_type, ath_duration, ath_done, ath_reward);
        int cnt = new ScheduleDAO().join(schedule);

        PrintWriter out;
        try {
            out = response.getWriter();
            if (cnt > 0) {
                System.out.println("일정 추가 성공!");
                // 세션에 일정 정보를 저장합니다.
                HttpSession session = request.getSession();
                session.setAttribute("schedule", schedule);
                out.print(true);
            } else {
                System.out.println("일정 추가 실패..");
                out.print(false);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }
}

