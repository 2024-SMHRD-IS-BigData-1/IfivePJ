<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
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
		}
	</script>
</head>
<body>
  <h1>Add Event</h1>
  <input type="text" id="eventTitle" placeholder="Event Title" />
  <input type="datetime-local" id="startDate" />
  <input type="datetime-local" id="endDate" />
  <button onclick="submitEvent()">Add Event</button>
  
    <h1>음식</h1>
  <input type="text" id="eventTitle" placeholder="Event Title" />
  <button onclick="submitEvent()">Add Event</button>
  
    <h1>운동</h1>
  <input type="text" id="eventTitle" placeholder="Event Title" />
  <button onclick="submitEvent()">Add Event</button>
	
	<br>
	<br>
	
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
		음식 검색 <input type="text" id="FoodCalory" name="FoodCalory"
			placeholder="검색어 입력">
		<button id="searchButton">검색</button>
		<div id="results"></div>
	</form>

</body>
</html>
