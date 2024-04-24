<%@page import="com.smhrd.model.Member"%>
<%@page import="com.smhrd.model.ScheduleDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.Schedule"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* 이벤트 목록을 나타내기 위한 스타일 */
    .eventItem {
        margin-bottom: 10px; /* 각 이벤트 항목 사이에 공간을 줍니다. */
    }
    .eventItem * {
        display: inline-block; /* 모든 요소를 한 줄에 표시합니다. */
        vertical-align: middle; /* 요소를 수직 중앙에 정렬합니다. */
    }
</style>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<script>
function submitEvent(eventType) {
    var eventTitleInput = document.getElementById(eventType + "EventTitle").value;
    var scheduleDateInput = document.getElementById(eventType + "Date").value;
    var scheduleTimeInput = document.getElementById(eventType + "Time").value;
    var scheduleDurationInput = document.getElementById(eventType + "Duration").value;

    // 이벤트 목록 추가
    var eventListDiv = document.getElementById(eventType + "Events");
    var eventItemDiv = document.createElement("div");
    eventItemDiv.className = "eventItem";

    // checkbox 추가
    var checkbox = document.createElement("input");
    checkbox.type = "checkbox";
    checkbox.className = "checkbox";
    eventItemDiv.appendChild(checkbox);

    // 이벤트 텍스트 추가
    var newEventText = document.createElement("p");
    newEventText.textContent = eventTitleInput + ' ' + scheduleDateInput + ' ' + scheduleTimeInput + ' ' + scheduleDurationInput;
    eventItemDiv.appendChild(newEventText);

    // Edit 버튼 추가
    var editButton = document.createElement("button");
    editButton.textContent = "Edit";  
    editButton.className = "editButton";
    editButton.onclick = function() {
        var newEventTitle = prompt("Enter new event title", eventTitleInput);
        if (newEventTitle) {
            eventTitleInput = newEventTitle;
            newEventText.textContent = eventTitleInput + ' ' + scheduleDateInput + ' ' + scheduleTimeInput + ' ' + scheduleDurationInput;
        }
    };
    eventItemDiv.appendChild(editButton);

    eventListDiv.insertBefore(eventItemDiv, eventListDiv.firstChild); 

    // AJAX 요청을 보냅니다.
    $.ajax({
        url: 'cal.jsp',
        type: 'POST',
        data: {
            eventTitle: eventTitleInput,
            scheduleDate: scheduleDateInput,
            scheduleTime: scheduleTimeInput, // 수정된 부분
            scheduleDuration: scheduleDurationInput // 수정된 부분
        },
        success: function(response) {
            console.log(response);
            var eventData = {
                title: eventTitleInput,
                start: scheduleDateInput + 'T' + scheduleTimeInput, // 캘린더에서 사용할 형식으로 조합합니다.
                allDay: false // 이벤트가 하루 종일인지 여부를 설정합니다.
            };
            $('#calendar').fullCalendar('renderEvent', eventData, true); // 캘린더에 이벤트를 추가합니다.
        },
        error: function(xhr, status, error) {
            console.error(error);
        }
    });
}
</script>



<body>
         
         
                     
         <h1>운동 일정</h1>
         <input type="text" id="scheduleEventTitle" name="ath_type" placeholder="Event Title" />
         <input type="date" id="scheduleDate" name="ath_date" />
         <input type="time" id="scheduleTime" name="ath_time" />
         
         <input type="text" id="scheduleDuration" name="ath_duration"/>
         <button onclick="submitEvent('schedule')">Add Event</button>
         <div id="scheduleEvents" class="eventList"></div>
         <div id="scheduleList"></div>
         
         
         <h1>음식기록</h1>
         <input type="text" id="FoodEventTitle" name="ath_type" placeholder="Event Title" />
         <input type="text" id="scheduleDuration" name="ath_duration"/>
         <button onclick="submitEvent('schedule')">Add Event</button>
         <div id="scheduleEvents" class="eventList"></div>
         <div id="scheduleList"></div>
         
         
         <h1>운동기록</h1>
         <input type="text" id="FoodEventTitle" name="ath_type" placeholder="Event Title" />
         <input type="text" id="scheduleDuration" name="ath_duration"/>
         <button onclick="submitEvent('schedule')">Add Event</button>
         <div id="scheduleEvents" class="eventList"></div>
         <div id="scheduleList"></div>
         
         
           
         <button id="registerButton">등록 완료</button>
         
         
         
         <script>
         // 등록 완료 버튼 클릭 시 창 닫기
         document.getElementById('registerButton').addEventListener('click', function() {
             window.close(); // 창 닫기
         });
         </script>
         
         
         
</body>
</html>