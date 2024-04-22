<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
<style>
.eventItem {
    display: flex; /* 이벤트 항목을 가로로 정렬하기 위해 flexbox 사용 */
    align-items: center; /* 세로 중앙 정렬 */
}
.editButton {
    margin-left: 10px; /* Edit 버튼과 이벤트 텍스트 사이의 공간을 설정합니다. */
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

    // 운동 일정에 대해서만 날짜 데이터를 포함하여 전송
    var eventData = {
        eventType: eventType,
        title: eventTitleInput
    };
    if (eventType === "exercise") {
        eventData.start = startDateInput;
        eventData.end = endDateInput;
    }

    // AJAX 요청 보내기
    $.ajax({
        url: 'ScheduleService.do', // 서버의 엔드포인트 URL
        type: 'POST', // 요청 메소드 (POST로 지정하여 데이터 전송)
        contentType: 'application/json', // 전송할 데이터의 타입 (JSON으로 지정)
        data: JSON.stringify(eventData), // 전송할 데이터 객체를 JSON 문자열로 변환하여 전송
        success: function(response) {
            // 성공적으로 응답을 받았을 때 수행할 작업
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
    <input type="text" id="exerciseEventTitle" placeholder="Event Title" />
    <input type="date" id="exerciseStartDate" />
    <input type="date" id="exerciseEndDate" />
    <button onclick="submitEvent('exercise')">Add Event</button>
    <div id="exerciseEvents" class="eventList"></div>
    <div id="exerciseList"></div>
    
    <h1>음식</h1>
    <input type="text" id="foodEventTitle" placeholder="Event Title" />
    <button onclick="submitEvent('food')">Add Event</button>
    <div id="foodEvents" class="eventList"></div>
    <div id="foodList"></div>
    
    <h1>운동이름</h1>
    <input type="text" id="exercisenameEventTitle" placeholder="Event Title" />
    <button onclick="submitEvent('exercisename')">Add Event</button>
    <div id="exercisenameEvents" class="eventList"></div>
    <div id="exercisenameList"></div>
     
</body>
</html>
