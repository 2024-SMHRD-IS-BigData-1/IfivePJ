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
    eventItemDiv.className = "eventItem"; // 이벤트 항목의 클래스를 지정합니다.

    // checkbox 추가
    var checkbox = document.createElement("input");
    checkbox.type = "checkbox"; // input 요소를 체크박스로 지정합니다.
    checkbox.className = "checkbox";
    eventItemDiv.appendChild(checkbox); // 체크박스를 이벤트 항목에 추가합니다.

    // 이벤트 텍스트 추가
    var newEventText = document.createElement("p");
    newEventText.textContent = eventTitleInput + ' ' + scheduleDateInput + ' ' + scheduleTimeInput + ' ' + scheduleDurationInput;
    eventItemDiv.appendChild(newEventText); // 이벤트 텍스트를 이벤트 항목에 추가합니다.

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
    eventItemDiv.appendChild(editButton); // Edit 버튼을 이벤트 항목에 추가합니다.

    eventListDiv.insertBefore(eventItemDiv, eventListDiv.firstChild); // 이벤트 항목을 이벤트 목록의 첫 번째 자식으로 추가합니다.
    

    var eventTitleInput = document.getElementById('scheduleEventTitle').value;
    var scheduleDateInput = document.getElementById('scheduleDate').value;
    var scheduleTimeInput = document.getElementById('scheduleTime').value;
    var scheduleDurationInput = document.getElementById('scheduleDuration').value;

    // AJAX 요청을 보냅니다.
 // AJAX 요청을 보냅니다.
    $.ajax({
        url: 'cal.jsp', // 데이터를 처리할 jsp 파일의 경로
        type: 'POST', // POST 방식으로 데이터를 전송합니다.
        data: {
            eventTitle: eventTitleInput,
            scheduleDate: scheduleDateInput
        },
        success: function(response) {
            // 요청이 성공하면 수행할 작업을 여기에 작성합니다.
            console.log(response); // 서버에서 받은 응답을 출력합니다.
            // 부모 창으로 이벤트 데이터 전송
            var eventData = {
                title: eventTitleInput,
                scheduleDate: scheduleDateInput
            };
            window.opener.postMessage(JSON.stringify(eventData), '*');
        },
        error: function(xhr, status, error) {
            // 오류가 발생하면 수행할 작업을 여기에 작성합니다.
            console.error(error); // 오류를 콘솔에 출력합니다.
        }
    });
    
    
    

    // AJAX 요청 보내기
    $.ajax({
        url: 'ScheduleService.do', // 서버의 엔드포인트 URL
        type: 'POST', // 요청 메소드 (POST로 지정하여 데이터 전송)
        data: {
            title: eventTitleInput,
            date: scheduleDateInput,
            time: scheduleTimeInput,
            duration: scheduleDurationInput,
            /* checkbox: checkbox.checked // 체크박스의 상태를 데이터에 추가합니다. */
        },
        success: function(response) {
            console.log(response);
        },
        error: function(xhr, status, error) {
            // 오류 발생 시 수행할 작업
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
			<button id="registerButton">등록 완료</button>
			
			
			
			<script>
			// 등록 완료 버튼 클릭 시 창 닫기
			document.getElementById('registerButton').addEventListener('click', function() {
			    window.close(); // 창 닫기
			});
			</script>
			
			
			
</body>
</html>
