<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='utf-8' />
  <!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <!-- jquery CDN -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- Bootstrap JS (v5) CDN -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
  <!-- fullcalendar CDN -->
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  <!-- fullcalendar 언어 CDN -->
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
<style>
  /* body 스타일 */
  html, body {
    overflow: hidden;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }
  /* 캘린더 위의 해더 스타일(날짜가 있는 부분) */
  .fc-header-toolbar {
    padding-top: 1em;
    padding-left: 1em;
    padding-right: 1em;
  }
   #exampleModal {
    position: absolute;
    /*top: calc(100% + 20px); /* 캘린더 아래로부터 20px 떨어진 위치 */ 
    display: none;
    top : -20px;
    left: 30%; /* 가운데 정렬 */
    transform: translateX(-50%); /* 가운데 정렬 */
    z-index: 1051; /* 캘린더 모달 뒤에 위치 */
    
    /* 테스트용 배경색 추가 */
     background-color: whitesmoke;
  }
</style>
</head>
<body style="padding:30px;">
  <!-- calendar 태그 -->
  <div id='calendar-container'>
    <div id='calendar'></div>
  </div>
  
  <!-- Modal Start -->
  <div
      class="modal fade"
      id="exampleModal"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"> 일정 추가하기</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            일정이름 : <input type="text" id="title" /><br />
            시작시간 : <input type="datetime-local" id="start" /><br />
            종료시간 : <input type="datetime-local" id="end" /><br />
            배경색상 :
            <select id="color">
              <option value="red">빨강색</option>
              <option value="orange">주황색</option>
              <option value="yellow">노랑색</option>
              <option value="green">초록색</option>
              <option value="blue">파랑색</option>
              <option value="indigo">남색</option>
              <option value="purple">보라색</option>
            </select><br>
            기록유형 : 
            <select id="intake_ath">
            <option value="morning">아침</option>
            <option value="lunch">점심</option>
            <option value="dinner">저녁</option>
            <option value="snack">간식</option>
            <option value="athletics">운동</option>
         </select>
          </div>
          <div class="modal-footer">
             <input type="submit" value="취소"   class="btn btn-secondary" data-bs-dismiss="modal">
             <input type="submit" value="추가" class="btn btn-primary" id="saveChanges">
          </div>
        </div>
      </div>
    </div>
    

<script>
  $(function(){
    // calendar element 취득
    var calendarEl = $('#calendar')[0];
    // full-calendar 생성하기
    var calendar = new FullCalendar.Calendar(calendarEl, {
      height: '700px', // calendar 높이 설정
      expandRows: true, // 화면에 맞게 높이 재설정
      slotMinTime: '08:00', // Day 캘린더에서 시작 시간
      slotMaxTime: '20:00', // Day 캘린더에서 종료 시간
      // 해더에 표시할 툴바
      customButtons:{
    	  mycustomButton:{
              text: "일정 추가하기",
              click: function(){
                 $("#exampleModal").modal("show");
              }
           },
           mySaveButton:{
           text:"운동 저장하기",
           click:   async function() {
              if (confirm("저장하시겠습니까?")){
                 var allEvent = calendar.getEvents();
                 const saveEvent = await axios({
                    method : "POST",
                    url : "/calendar",
                    data: allEvent,
                 });
              }
           }
           }
        },
          
          headerToolbar: {
            left: 'prev,next today,mycustomButton,mySaveButton',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
          },

      initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
      navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
      editable: true, // 수정 가능?
      selectable: true, // 달력 일자 드래그 설정가능
      nowIndicator: true, // 현재 시간 마크
      dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
      locale: 'ko', // 한국어 설정
      eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
        console.log(obj);
      },
      select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
        var title = prompt('Event Title:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.startStr,
            end: arg.endStr,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      // 이벤트 
      events: [
        {title: 'All Day Event',start: '2021-07-01',},
        {title: 'Long Event',start: '2021-07-07', end: '2021-07-10'},
        {groupId: 999,title: 'Repeating Event',start: '2021-07-09T16:00:00'},
        {groupId: 999,title: 'Repeating Event',start: '2021-07-16T16:00:00'},
        {title: 'Conference',start: '2021-07-11',end: '2021-07-13'},
        {title: 'Meeting',start: '2021-07-12T10:30:00', end: '2021-07-12T12:30:00'},
        {title: 'Lunch',start: '2021-07-12T12:00:00'},
        { title: 'Meeting', start: '2021-07-12T14:30:00'},
        {title: 'Happy Hour',start: '2021-07-12T17:30:00'},
        {title: 'Dinner',start: '2021-07-12T20:00:00'},
        {title: 'Birthday Party',start: '2021-07-13T07:00:00'},
        {title: 'Click for Google',url: 'http://google.com/' /* 클릭시 해당 url로 이동*/, start: '2021-07-28'}
      ]
    });
    // 캘린더 랜더링
    calendar.render();

    // 날짜 칸을 클릭했을 때 팝업 창 표시
    $('input[type="datetime-local"]').on('click', function() {
      $("#exampleModal").modal("show");
    });

    $("#saveChanges").on("click", function () {
       var eventData = {
          title: $("#title").val(),
          start: $("#start").val(),
          end: $("#end").val(),
          color: $("#color").val(),
          intake_ath: $("#intake_ath").val()
       }
       //빈값입력시 오류
       if (
          eventData.title == "" ||
          eventData.start == "" ||
          eventData.end == "" ||
          eventData.intake_ath == ""
       ) {
          alert("입력하지 않은 값이 있습니다.");

       } else if ($("#start").val() > $("#end").val()) {
          // 끝나는 날짜가 시작하는 날짜보다 값이 크면 안됨
          alert("시간을 잘못입력 하셨습니다.");

       } else {
          // 이벤트 추가
          calendar.addEvent({
            title: eventData.title,
            start: eventData.start,
            end: eventData.end,
            color: eventData.color,
            intake_ath: eventData.intake_ath
          });
          $("#exampleModal").modal("hide");

          $("#title").val("");
          $("#start").val("");
          $("#end").val("");
          $("#color").val("");
          $("#intake_ath").val("");
       }
    });
  });
</script>
</body>
</html>
