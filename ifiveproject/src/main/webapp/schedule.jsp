<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
<style>
.eventItem {
    display: flex; 
    align-items: center; 
}
.editButton {
    margin-left: 10px; 
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
function submitEvent(eventType) {
    var eventTitleInput = document.getElementById(eventType + "EventTitle").value;

    // 운동 일정 이벤트에 대해서만 시간 입력란의 값을 읽습니다.
    var startDateInput, endDateInput;
    if (eventType === "exercise") {
        startDateInput = document.getElementById(eventType + "StartDate").value;
        endDateInput = document.getElementById(eventType + "EndDate").value;
    }

    // 이벤트 목록 추가 후에 AJAX 요청 보내기
    var eventListDiv = document.getElementById(eventType + "Events");
    var eventItemDiv = document.createElement("div");
    eventItemDiv.className = "eventItem"; // 이벤트 항목의 클래스를 지정합니다.

    var newEventText = document.createElement("p");
    newEventText.textContent = eventTitleInput + (startDateInput && endDateInput ? " - " + startDateInput + " to " + endDateInput : "");
    eventItemDiv.appendChild(newEventText); 

    // Edit 버튼 추가
    var editButton = document.createElement("button");
    editButton.textContent = "Edit";
    editButton.className = "editButton";
    editButton.onclick = function() {
        var newEventTitle = prompt("Enter new event title", eventTitleInput);
        if (newEventTitle) {
            eventTitleInput = newEventTitle;
            newEventText.textContent = eventTitleInput + (startDateInput && endDateInput ? " - " + startDateInput + " to " + endDateInput : "");
        }
    };
    eventItemDiv.appendChild(editButton);
    
    eventListDiv.appendChild(eventItemDiv);
    
    
    var checkbox = document.createElement("input");
    checkbox.type = "checkbox"; // input 요소를 체크박스로 지정합니다.
    checkbox.className = "checkbox";

    eventItemDiv.insertBefore(checkbox, eventItemDiv.firstChild); // 체크박스를 이벤트 텍스트 앞에 추가합니다.

    

    // 운동 일정에 대해서만 날짜 데이터를 포함하여 전송
    var eventData = {
        eventType: eventType,
        title: eventTitleInput
    };
    if (eventType === "exercise") {
        eventData.startDate = startDateInput;
        eventData.endDate = endDateInput;
    }

    // AJAX 요청 보내기
    $.ajax({
        url: 'ScheduleService.do', // 서버의 엔드포인트 URL
        type: 'POST', // 요청 메소드 (POST로 지정하여 데이터 전송)
        data: {
            eventType: eventType,
            title: eventTitleInput,
            start: startDateInput, // 운동 일정 이벤트에 대해서만 전송합니다.
            end: endDateInput // 운동 일정 이벤트에 대해서만 전송합니다.
        }, // 전송할 데이터 객체를 직접 지정하여 전송
        success: function(response) {
        	addEventToCalendar(eventTitleInput, startDateInput, endDateInput);
            console.log(response);
        },
        error: function(xhr, status, error) {
            // 오류 발생 시 수행할 작업
            console.error(error);
        }
    });
}



</script>

</head>
<body>

    <h1>운동 일정</h1>
    <input type="text" id="exerciseEventTitle"  name="ath_type" placeholder="Event Title" />
    <input type="date" id="exerciseDate" name="ath_date" />
    <input type="time" id="exerciseStratDate" name = "ath_time" />
    <input type="text" id="exerciseduration" name = "ath_duration"/>
    <button onclick="submitEvent('exercise')">Add Event</button>
    <div id="exerciseEvents" class="eventList"></div>
    <div id="exerciseList"></div>
    <!-- 계획 식별자(.idx), 회원 아이디(session?), 운동날짜O, 운동 시간O, 운동종류O, 운동 시간O, 등록 일자(sysdate), 완료여부(checkbox), 리워드(??)  -->
    
    
    <h1>음식</h1>
    <input type="text" id="foodEventTitle" name="food_name" placeholder="Event Title" />
    <button onclick="submitEvent('food')">Add Event</button>
    <div id="foodEvents" class="eventList"></div>
    <div id="foodList"></div>
    
    <h1>운동이름</h1>
    <input type="text" id="exercisenameEventTitle" name="exercise_name" placeholder="Event Title" />
    <button onclick="submitEvent('exercisename')">Add Event</button>
    <div id="exercisenameEvents" class="eventList"></div>
    <div id="exercisenameList"></div>
    
    <form action="cal.jsp">   
    <input type="submit" value="등록 완료">
    </form>
    
    
      
</body>
</html>