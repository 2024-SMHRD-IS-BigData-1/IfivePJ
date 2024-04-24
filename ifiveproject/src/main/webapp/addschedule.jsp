<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        .box{
            width: 100%; 
            height: 100%; 
            position: relative
        }
         /* 이벤트 목록을 나타내기 위한 스타일 */
        .eventItem {
            margin-bottom: 10px; /* 각 이벤트 항목 사이에 공간을 줍니다. */
        }
        .eventItem * {
            display: inline-block; /* 모든 요소를 한 줄에 표시합니다. */
            vertical-align: middle; /* 요소를 수직 중앙에 정렬합니다. */
        }
       .callender_bg{
            width: 500px; 
            height: 695px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }



        /* exercise */
        .exercise_title_box1{
            width: 500px; 
            height: 31px; 
            left: 0px; 
            top: 0px; 
            position: absolute
        }
        .exercise_title_box1_bg{
            width: 500px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .exercise_title_bar{
            width: 500px; 
            height: 1px; 
            left: 0px; 
            top: 30px; 
            position: absolute; 
            background: #DBDBDB
        }
        .exercise_title_text_box{
            width: 80px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute
        }
        .exercise_title_text_box_bg{
            width: 80px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .exercise_title_text{
            left: 1px; 
            top: 0px; 
            position: absolute; 
            color: black; 
            font-size: 20px; 
            font-family: Noto Sans KR; 
            font-weight: 500; 
            word-wrap: break-word
        }

        .exercise_box{
            width: 500px; 
            height: 300px; 
            left: 0px; 
            top: 31px; 
            position: absolute;
        }
        .exercise_box_bg{
            width: 500px; 
            height: 300px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }

        .what_exercise_box{
            width: 240px; 
            height: 50px; 
            left: 5px; 
            top: 20px; 
            position: absolute
        }
        .what_exercise_box_bg{
            width: 240px; 
            height: 50px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3; 
            border-radius: 5px
        }
        .what_exercise_type{
            width: 215px; 
            height: 25px; 
            left: 11px; 
            top: 12px; 
            position: absolute; 
            color: #797979; 
            font-size: 15px; 
            font-family: Noto Sans KR; 
            font-weight: 300; 
            word-wrap: break-word;
            border: none;
            outline: none;
            background-color: transparent;
        }

        .exercise_detail_box{
            width: 240px; 
            height: 50px; 
            left: 255px; 
            top: 20.40px; 
            position: absolute
        }
        .exercise_detail_box_bg{
            width: 240px; 
            height: 50px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3; 
            border-radius: 5px;
        }
        .exercise_detail_type{
            width: 220px; 
            height: 27px; 
            left: 10px; 
            top: 11.60px;
            position: absolute; 
            color: #797979; 
            font-size: 15px; 
            font-family: Noto Sans KR; 
            font-weight: 300; 
            word-wrap: break-word;
            border: none;
            outline: none;
            background-color: transparent;
        }

        .when_day_box{
            width: 240px; 
            height: 20px; 
            left: 5px; 
            top: 80px; 
            position: absolute
        }
        .when_day_box_bg{
            width: 240px; 
            height: 20px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3; 
            border-radius: 5px
        }
        .when_day_box_img{
            width: 15px; 
            height: 15px; 
            left: 215px; 
            top: 3px; 
            position: absolute; 
            background: #D9D9D9
        }
        .when_day_type{
            width: 220px; 
            left: 11px; 
            top: 3px; 
            position: absolute; 
            color: #797979; 
            font-size: 12px; 
            font-family: Noto Sans KR; 
            font-weight: 300; 
            word-wrap: break-word;
            border: none;
            outline: none;
            background-color: transparent;
        }

        .when_time_box{
            width: 240px; 
            height: 20px; 
            left: 255px; 
            top: 80px; 
            position: absolute
        }
        .when_time_box_bg{
            width: 240px; 
            height: 20px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3; 
            border-radius: 5px
        }
        .when_time_box_img{
            width: 15px; 
            height: 15px; 
            left: 215px; 
            top: 3px; 
            position: absolute; 
            background: #D9D9D9
        }
        .when_time_type{
            width: 220px; 
            left: 10px; 
            top: 3px; 
            position: absolute; 
            color: #797979; 
            font-size: 12px; 
            font-family: Noto Sans KR; 
            font-weight: 300; 
            word-wrap: break-word;
            border: none;
            outline: none;
            background-color: transparent;
        }

        .adit_button_box1{
            width: 50px; 
            height: 22px; 
            left: 445px; 
            top: 105px; 
            position: absolute;
            border: none;
            outline: none;
            background-color: transparent;
            cursor: pointer;
        }
        .adit_button_box1_bg{
            width: 50px; 
            height: 20px; 
            left: 0px; 
            top: 1px; 
            position: absolute; 
            background: #999999; 
            border-radius: 5px
        }
        .adit_button_box1_text{
            left: 11px; 
            top: 0px; 
            position: absolute;
            color: white; 
            font-size: 15px; 
            font-family: Noto Sans KR; 
            font-weight: 400; 
            word-wrap: break-word
        }

        .record_exercise_box{
            width: 490px; 
            height: 169px; 
            left: 5px; 
            top: 131px; 
            position: absolute
        }
        .record_exercise_box_bg{
            width: 490px; 
            height: 169px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3; 
            border-radius: 5px
        }
        .exercise_record{
            width: 470px; 
            height: 147px; 
            left: 10px; 
            top: 10px; 
            position: absolute; 
            color: #797979; 
            font-size: 15px; 
            font-family: Noto Sans KR; 
            font-weight: 300; 
            word-wrap: break-word
        }


        /* food */
        .food_title_box1{
            width: 500px; 
            height: 31px; 
            left: 0px; 
            top: 351px; 
            position: absolute
        }
        .food_title_bar{
            width: 500px; 
            height: 1px; 
            left: 0px; 
            top: 30px; 
            position: absolute; 
            background: #DBDBDB
        }
        .food_title_box2{
            width: 500px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute;
        }
        .food_title_box2_bg{
            width: 500px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .food_title_text_box{
            width: 80px;
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute
        }
        .food_title_text_box_bg{
            width: 80px; 
            height: 30px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white
        }
        .food_title_text{
            width: 77px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            color: black; 
            font-size: 20px; 
            font-family: Noto Sans KR; 
            font-weight: 500; 
            word-wrap: break-word
        }


        .what_food_box{
            width: 480px; 
            height: 25px; 
            left: 10px; 
            top: 20px; 
            position: absolute
        }
        .what_food_box_bg{
            width: 480px; 
            height: 25px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3; 
            border-radius: 5px
        }
        .what_food_type_box{
            width: 480px; 
            height: 20px; 
            left: 0px; 
            top: 3px; 
            position: absolute
        }
        .what_food_type_box_bg{
            width: 480px; 
            height: 20px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3; 
            border-radius: 5px;
        }
        /* .what_food_type_img{
            width: 20px; 
            height: 20px; 
            left: 450px; 
            top: 0px; 
            position: absolute; 
            background: #D9D9D9;
        } */
        .what_food_type{
            width: 417px; 
            height: 19px; 
            left: 10px; 
            top: 1px; 
            position: absolute; 
            color: #797979; 
            font-size: 15px; 
            font-family: Noto Sans KR; 
            font-weight: 300; 
            word-wrap: break-word;
            border: none;
            outline: none;
            background-color: transparent;
        }



        .food_box{
            width: 500px; 
            height: 255px; 
            left: 0px; 
            top: 382px; 
            position: absolute;
        }
        .food_box_bg{
            width: 500px; 
            height: 255px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: white;
        }
        .record_food_box2{
            width: 480px;
            height: 170px; 
            left: 10px; 
            top: 75px; 
            position: absolute;
        }
        .record_food_box_bg2{
            width: 480px; 
            height: 170px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3; 
            border-radius: 5px;
        }
        .food_record_box{
            width: 480px; 
            height: 170px; 
            left: 0px; 
            top: 0px; 
            position: absolute
        }
        .food_record_box_bg{
            width: 480px; 
            height: 170px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #F3F3F3; 
            border-radius: 5px;
        }
        .food_record{
            width: 459.13px; 
            height: 145.23px; 
            left: 10.43px; 
            top: 11.26px; 
            position: absolute; 
            color: #797979; 
            font-size: 15px; 
            font-family: Noto Sans KR; 
            font-weight: 300; 
            word-wrap: break-word;
        }

        .adit_button_box2{
            width: 50px; 
            height: 22px; 
            left: 440px; 
            top: 49px; 
            position: absolute;
            border: none;
            outline: none;
            background-color: transparent;
            cursor: pointer;
        }
        .adit_button_box2_bg{
            width: 50px; 
            height: 20px; 
            left: 0px; 
            top: 1px; 
            position: absolute; 
            background: #999999; 
            border-radius: 5px
        }
        .adit_button_box2_text{
            left: 11px; 
            top: 0px; 
            position: absolute; 
            color: white; 
            font-size: 15px; 
            font-family: Noto Sans KR; 
            font-weight: 400; 
            word-wrap: break-word;
        }

        /* register button */
        .register_button_box{
            width: 70px; 
            height: 25px; 
            left: 420px; 
            top: 646px; 
            position: absolute;
            border: none;
            outline: none;
            background-color: transparent;
            cursor: pointer;
            
        }
        .register_button_box_bg{
            width: 70px; 
            height: 25px; 
            left: 0px; 
            top: 0px; 
            position: absolute; 
            background: #999999; 
            border-radius: 5px
        }
        .register_button_text{
            left: 7px; 
            top: 2px; 
            position: absolute; 
            color: white; 
            font-size: 15px; 
            font-family: Noto Sans KR; 
            font-weight: 400; 
            word-wrap: break-word
        }
    </style>

</head>
<body>
    <div class="box">
        <div class="callender_bg"></div>

        <!-- exercise -->
        <div class="exercise_title_box1">
            <div class="exercise_title_box1_bg"></div>
            <div class="exercise_title_bar"></div>
            <div class="exercise_title_text_box">
                <div class="exercise_title_text_box_bg"></div>
                <div class="exercise_title_text">Exercise</div>
            </div>
        </div>
        <div class="exercise_box">
            <div class="exercise_box_bg"></div>
            <div class="what_exercise_box">
                <div class="what_exercise_box_bg"></div>
                <input type="text" class="what_exercise_type" placeholder="What..."/>
            </div>
            <div class="exercise_detail_box">
                <div class="exercise_detail_box_bg"></div>
                <input type="text" class="exercise_detail_type" placeholder="Details..."/>
            </div>
            <div class="when_day_box">
                <div class="when_day_box_bg"></div>
                <!-- <div class="when_day_box_img"></div> -->
                <input type="date" name="ath_date" class="when_day_type" placeholder="Year-Month-Day"/>
            </div>
            <div class="when_time_box">
                <div class="when_time_box_bg"></div>
                <!-- <div class="when_time_box_img"></div> -->
                <input type="time" name="ath_time" class="when_time_type">Time...</input>
            </div>
            <button onclick="submitEvent('schedule')" class="adit_button_box1">
                <div class="adit_button_box1_bg"></div>
                <div class="adit_button_box1_text">Adit</div>
            </button>
            <div class="record_exercise_box">
                <div class="record_exercise_box_bg"></div>
                <div class="exercise_record">Record...</div>
                <!-- <div id="scheduleList"></div> -->

            </div>
        </div>

        <!-- food -->
        <div class="food_title_box1">
            <div class="food_title_bar"></div>
            <div class="food_title_box2">
                <div class="food_title_box2_bg"></div>
                <div class="food_title_text_box">
                    <div class="food_title_text_box_bg"></div>
                    <div class="food_title_text">Food</div>
                </div>
            </div>
        </div>
        <div class="food_box">
            <div class="food_box_bg"></div>
            <div class="what_food_box">
                <div class="what_food_box_bg"></div>
                <div class="what_food_type_box">
                    <div class="what_food_type_box_bg"></div>
                    <div class="what_food_type_img"></div>
                    <input type="text" name="ath_type" class="what_food_type" placeholder="What..."/>
                </div>
            </div>
            <button onclick="submitEvent('schedule')" class="adit_button_box2">
                <div class="adit_button_box2_bg"></div>
                <div class="adit_button_box2_text">Adit</div>
            </button>
            <div class="record_food_box2">
                <div class="record_food_box_bg2"></div>
                <div class="food_record_box">
                    <div class="food_record_box_bg"></div>
                    <div class="food_record">Record...</div>
                </div>
            </div>
        </div>

        <!-- register button -->
        <button class="register_button_box">
            <div class="register_button_box_bg"></div>
            <div class="register_button_text">Register</div>
        </button>
    </div>
    
    
    
    
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

    <script>



       // 등록 완료 버튼 클릭 시 창 닫기
         document.getElementById('register_button_box').addEventListener('click', function() {
             window.close(); // 창 닫기
         });
    </script>
</body>
</html>