<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
    </div>
    <input type="text" id="message" placeholder="Enter your message" />
    <button id="button" onclick="sendMessage()">Send</button>
	
    <script>
 		// 메시지를 서버로 보내는 함수
 		//document.getElementById('sendButton').addEventListener('click', sendMessage);
	    function sendMessage() {
	        // 입력 필드의 값을 가져옵니다.
	        const messageInput = document.getElementById('message');
	        const message = messageInput.value;
	        
	        // AJAX 요청을 보냅니다.
	        $.ajax({
	            type: "POST",
	            url: "ChatService.do",
	            data: {
	                "message" : message  // 입력된 메시지를 서버로 보냅니다.
	            },
	            success: function(response) {
	                // 요청이 성공적으로 처리되었을 때의 작업
	                console.log("메세지 보내짐");
	                console.log("Response:", response);
	                // 요청이 성공적으로 처리되면 입력 필드를 초기화합니다.
	                messageInput.value = '';
	            },
	            error: function(xhr, status, error) {
	                // 요청이 실패했을 때의 작업
	                console.error("Error sending message:", error);
	            }
	        });
	    }
    
    // 버튼에 대한 이벤트 리스너 추가
    	

         /* function updateChat() {
            $.ajax({
                type: "GET",
                url: "ChatService",
                success: function(response) {
                    $("#chatbox").html(response);
                },
                error: function(xhr, status, error) {
                    console.error("Error updating chat: " + error);
                }
            });
        }  
        // Update chat every 2 seconds
        setInterval(updateChat, 2000);*/
    </script>
</body>
</html>