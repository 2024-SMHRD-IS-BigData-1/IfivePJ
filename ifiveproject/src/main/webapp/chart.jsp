<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>주간 데이터 차트</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <style>
        #chart-container {
            height: 400px;
        }
    </style>
</head>
<body>
    <div id="chart-container"></div>
    <script>
        // 예시로 사용할 save_cal 변수 데이터
        var save_cal = [150, 200, 250, 300, 350, 400, 450];

        google.charts.load('current', {packages: ['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Day');
            data.addColumn('number', 'Calories');

            var days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
            
            var rows = days.map(function(day, index) {
                return [day, save_cal[index]];
            });

            data.addRows(rows);

            var options = {
                title: 'Weekly Calories Intake',
                curveType: 'function',
                legend: { position: 'bottom' }
            };

            var chart = new google.visualization.LineChart(document.getElementById('chart-container'));
            chart.draw(data, options);
        }
    </script>
</body>
</html>
