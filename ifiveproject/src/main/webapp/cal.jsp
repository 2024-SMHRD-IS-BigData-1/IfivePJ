
<%@page import="com.smhrd.model.Calory"%>
<%@page import="com.smhrd.model.CaloryDAO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.smhrd.model.Schedule"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.ScheduleDAO"%>
<%@page import="com.smhrd.model.Member"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>




<!DOCTYPE html>
<html>
<head>
  <meta charset='utf-8' />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <!-- jquery CDN -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- Bootstrap JS (v5) CDN -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
  <!-- Fullcalendar CDN -->
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  <!-- Fullcalendar 언어 CDN -->
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <style>
    html, body {
      overflow: hidden;
      font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
      font-size: 14px;
    }
    #calendar-container {
      padding: 10px;
    }
    
    #chart-container {
      height: 300px;
    }
  </style>
  



<script src='fullcalendar/main.js'></script>
<script>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var user_schedule = [
       
       // 여기서 일정 정보를 직접 채워넣는 대신 JSP 코드를 사용하여 가져옴
        <% 
            // 세션에서 로그인된 사용자 정보 가져오기
            Member loginMember = (Member)session.getAttribute("loginMember");
            String userId = loginMember.getUser_id(); // 로그인된 사용자의 아이디

            // ScheduleDAO 인스턴스 생성
            ScheduleDAO scheduleDAO = new ScheduleDAO();
            
            // 해당 사용자의 모든 캘린더 정보 가져오기
            List<Schedule> user_schedule = scheduleDAO.selectAllByUserId(userId);
            // 가져온 일정 정보 출력
   
            for(Schedule event : user_schedule) {
                String dateString = event.getAth_date(); // 문자열 형식의 날짜

        %>
            {
                title: '<%= event.getAth_type() %>',
                start: '<%= dateString %>'
            },
        <% } %>

    ];

    var calendar = new FullCalendar.Calendar(calendarEl, {
      height: '600px',
      expandRows: true,
      slotMinTime: '08:00',
      slotMaxTime: '20:00',
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
      },
      initialView: 'dayGridMonth',
      editable: true,
      selectable: true,
      events: user_schedule,
      locale: 'ko',
      dateClick: function(info) {
        window.open('schedule_final.jsp?date=' + info.dateStr, '_blank');
      }
    });

    calendar.render();
  });


   </script>
</head>
<body>

<div id='calendar-container'>
  <div id='calendar'></div>
</div>
         
         
        




    <script>	
        var save_cal = [1250, 1400, 1250, 1400, 1350, 1300, 1450];

        google.charts.load('current', {packages: ['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Day');
            data.addColumn('number', 'Calories');
            data.addColumn('number', 'Basal Metabolic Rate');  // 기초대사량을 위한 새 열 추가

            var days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
            var basalMetabolicRate = 1500;  // 기초대사량 고정 값

            var rows = days.map(function(day, index) {
                return [day, save_cal[index], basalMetabolicRate];  // 모든 요일에 기초대사량 값 추가
            });

            data.addRows(rows);

            var options = {
                title: 'Weekly Calories Intake',
                curveType: 'none',
                legend: { position: 'bottom' },
                series: {
                    0: { color: '#e2431e' },  // 칼로리 데이터의 색상
                    1: { color: '#3366cc' }  // 기초대사량 라인의 색상
                }
            };

            var chart = new google.visualization.LineChart(document.getElementById('chart-container'));
            chart.draw(data, options);
        }

    </script>
    
    
   
   
  <div id="chart-container"></div>
  
 

</body>
</html>