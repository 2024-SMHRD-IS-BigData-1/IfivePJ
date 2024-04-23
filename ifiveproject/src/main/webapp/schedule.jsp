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

	<style>
		.eventItem {
			display: flex; /* 이벤트 항목을 가로로 정렬하기 위해 flexbox 사용 */
			align-items: center; /* 세로 중앙 정렬 */
		}
		
		.editButton {
			margin-left: 10px; /* Edit 버튼과 이벤트 텍스트 사이의 공간을 설정합니다. */
		}
	</style>
	
	<script>
	function submitEvent() {
	  var eventData = {
	    title: document.getElementById("eventTitle").value,
	    start: document.getElementById("startDate").value,
	    end: document.getElementById("endDate").value,
	    allDay: false  // 또는 true, 필요에 따라 설정
	  };
	  window.opener.postMessage(JSON.stringify(eventData), '*');
	  window.close();
	</script>
	
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

    <input type="text" id="exerciseEventTitle"  name="ath_type" placeholder="Event Title" />
    <input type="date" id="exerciseDate" name="ath_date" />
    <input type="time" id="exerciseStratDate" name = "ath_time" />
    <input type="text" id="exerciseduration" name = "ath_duration"/>
    <button onclick="submitEvent('exercise')">Add Event</button>
    <div id="exerciseEvents" class="eventList"></div>
    <div id="exerciseList"></div>
    <!-- 계획 식별자(.idx), 회원 아이디(session?), 운동날짜O, 운동 시간O, 운동종류O, 운동 시간O, 등록 일자(sysdate), 완료여부(checkbox), 리워드(??)  -->
    

	    <input type="text" id="exerciseEventTitle"  name="exercise_schedule" placeholder="Event Title" />
	    <input type="date" id="exerciseStartDate" />
	    <input type="date" id="exerciseEndDate" />
	    <button onclick="submitEvent('exercise')">Add Event</button>
	    <div id="exerciseEvents" class="eventList"></div>
	    <div id="exerciseList"></div>

    <h1>음식</h1>
	  <input type="text" id="eventTitle" placeholder="Event Title" />
	  <button onclick="submitEvent()">Add Event</button>
  
    <h1>운동</h1>
	  <input type="text" id="eventTitle" placeholder="Event Title" />
	  <button onclick="submitEvent()">Add Event</button>
	
	<br><br>
	<script>
        function searchFood() {
            var input = document.getElementById("FoodCalory").value;
            if (input.trim() === "") {
                alert("검색어를 입력하세요.");
                return false;
            }
            var results = document.getElementById("results");
            results.innerHTML = "검색한 음식이 있습니다: " + input;
            return false;
        }
    </script>
    
	<form action="FoodCaloryService.do" method="POST" onsubmit="return searchFood()">
    <input type="text" id="foodEventTitle" name="food_name" placeholder="음식 기록" />
    <button onclick="submitEvent('food')">Add Event</button>
    <div id="foodEvents" class="eventList"></div>
    <div id="foodList"></div>
    </form>
    
    <h1>운동이름</h1>
    <input type="text" id="exercisenameEventTitle" name="exercise_name" placeholder="Event Title" />
    <button onclick="submitEvent('exercisename')">Add Event</button>
    <div id="exercisenameEvents" class="eventList"></div>
    <div id="exercisenameList"></div>
    
    <form action="cal.jsp">   
    <input type="submit" value="등록 완료">
    </form>
    

    
      

    <form action="DietService.do" method="post">
		아이디값 넘겨야함 <input type="submit" id="input_food" value="식단기록">
	</form>
	<form action="FoodCaloryService.do" method="POST">
		음식 검색 <input type="text" id="FoodCalory" name="FoodCalory"
			placeholder="검색어 입력">
		<button id="searchButton">검색</button>
		<div id="results"></div>
	</form>
     

</body>
</html>