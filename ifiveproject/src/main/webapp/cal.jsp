<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        window.open('schedule.jsp?date=' + info.dateStr, '_blank');
      }
    });
    calendar.render();

    // Listen for messages from the child window
    window.addEventListener('message', function(event) {
      try {
        var eventData = JSON.parse(event.data);
        calendar.addEvent({
          title: eventData.title,
          start: eventData.start,
          end: eventData.end,
          allDay: eventData.allDay || false
        });
      } catch (e) {
        console.error("Error parsing event data", e);
      }
    }, false);
  });
  </script>
  
  
  <div id="chart-container"></div>
    <script>
        // 예시로 사용할 save_cal 변수 데이터
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
    
    
    


</body>
</html>
