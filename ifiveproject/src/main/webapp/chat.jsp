<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chat Application</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        /* 네모 박스 스타일 */
        .chat-text-box {
            width: auto; /* 너비는 chatbox의 100% */
            padding: 10px; /* 내부 패딩 */
            margin: 5px 0; /* 상하 여백 */
            border: 1px solid black; /* 테두리 */
            border-radius: 5px; /* 테두리 둥글게 */
            background-color: #f0f0f0; /* 배경색 */
            text-align: right;
        }
    </style>
</head>
<body>
    <!-- 채팅 박스 -->
    <div id="chatbox" style="width:450px;height:300px;border:1px solid black;overflow-y:auto;">
       
        <!-- 첫 번째 네모 텍스트 박스 -->
        <div class="chat-text-box">
            Text Box 1
        </div>
        <!-- 두 번째 네모 텍스트 박스 -->
        <div class="chat-text-box">
            Text Box 2
        </div>
        <!-- 세 번째 네모 텍스트 박스 -->
        <div class="chat-text-box">
            Text Box 3
        </div>
        <!-- 네 번째 네모 텍스트 박스 -->
        <div class="chat-text-box">
            Text Box 4
        </div>
    </div>
    <input type="text" id="message" placeholder="Enter your message" />
    <button onclick="sendMessage()">Send</button>

    <script>
        function sendMessage() {
           // 메시지를 채팅 박스에 추가하는 함수
            function sendMessage() {
                // 입력 필드의 값을 가져옴
                const message = document.getElementById('message').value;

                // 새로운 네모 텍스트 박스를 생성
                const newTextBox = document.createElement('div');
                newTextBox.className = 'chat-text-box';
                newTextBox.textContent = message;

                // 새로운 텍스트 박스를 채팅 박스에 추가
                const chatbox = document.getElementById('chatbox');
                chatbox.appendChild(newTextBox);

                // 입력 필드를 비움
                document.getElementById('message').value = '';
                
           var message = $("#message").val();
            $.ajax({
                type: "POST",
                url: "ChatServlet",
                data: { message: message },
                success: function(response) {
                    console.log("Message sent successfully");
                },
                error: function(xhr, status, error) {
                    console.error("Error sending message: " + error);
                }
            });
           }
        }

        function updateChat() {
            $.ajax({
                type: "GET",
                url: "ChatServlet",
                success: function(response) {
                    $("#chatbox").html(response);
                },
                error: function(xhr, status, error) {
                    console.error("Error updating chat: " + error);
                }
            });
        } 

        // Update chat every 2 seconds
        setInterval(updateChat, 2000);
    </script>
</body>
</html>