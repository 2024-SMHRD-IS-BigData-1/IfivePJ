<%@page import="com.google.gson.Gson"%>
<%@page import="com.smhrd.model.Schedule"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.ScheduleDAO"%>
<%@page import="com.smhrd.model.Member"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
    // 세션에서 로그인된 사용자 정보 가져오기
    Member loginMember = (Member)session.getAttribute("loginMember");
    String userId = loginMember.getUser_id(); // 로그인된 사용자의 아이디

    // ScheduleDAO 인스턴스 생성
    ScheduleDAO scheduleDAO = new ScheduleDAO();
    // 해당 사용자의 모든 캘린더 정보 가져오기
    List<Schedule> events = scheduleDAO.selectAllByUserId(userId);
    
    for(Schedule vo : events){
    	System.out.println(vo.toString());	
    }
    
    
    // Gson 라이브러리를 사용하여 이벤트 데이터를 JSON 형식으로 변환
    Gson gson = new Gson();
    String jsonEvents = gson.toJson(events);
%>
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
</head>
<body>


  <div id='calendar-container'>
    <div id='calendar'></div>
  </div>
 
 
    <script>
  document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
      var calendar = new FullCalendar.Calendar(calendarEl, {
    	  events: <%= jsonEvents %>,
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
          locale: 'ko',
          dateClick: function(info) {
              window.open('food.jsp?date=' + info.dateStr, '_blank');
          }
      });
      calendar.render();
  });
	</script>

  <div id="chart-container"></div>
    <script>
document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
        events: <%= jsonEvents %>,
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
        locale: 'ko',
        dateClick: function(info) {
            window.open('exercise.jsp?date=' + info.dateStr, '_blank');
        },
        eventContent: function(arg) {
            var title = arg.event.title;
            var createdAtDate = arg.event.start.toISOString().slice(0,10); // 일정의 시작 시간을 ISO 형식으로 변환하고 날짜 부분만 추출
            var athType = ''; // ath_type을 저장할 변수

            // events를 순회하며 생성 시간에 따라 ath_type을 설정
            for (var i = 0; i < events.length; i++) {
                var event = events[i];
                var eventCreatedAtDate = new Date(event.created_at).toISOString().slice(0,10); // 각 일정의 생성 시간을 ISO 형식으로 변환하고 날짜 부분만 추출

                // 생성 시간이 같은 경우 해당 ath_type을 가져옴
                if (createdAtDate === eventCreatedAtDate) {
                    athType = event.ath_type;
                    break;
                }
            }

            // ath_type에 따라 다른 표시 방식을 선택하여 반환
            return {
                html: '<div>' + title + ' (' + athType + ')</div>'
            };
        }
    });
    calendar.render();
});
</script>

  
 

</body>
</html>
