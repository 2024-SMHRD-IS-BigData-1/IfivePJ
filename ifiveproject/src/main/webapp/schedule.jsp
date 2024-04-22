<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
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
