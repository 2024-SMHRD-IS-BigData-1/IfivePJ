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
                   console.log("메세지 입력 완료");
                   console.log("Response:", response);
                   
                // 채팅 박스에 메시지를 추가합니다.
                   const chatbox = document.getElementById('chatbox');
                   const chatTextBox = document.createElement('div');
                   chatTextBox.className = 'chat-text-box';
                   chatTextBox.innerText = message;
                   
                   // 메시지를 채팅 박스에 추가합니다.
                   chatbox.appendChild(chatTextBox);
                   // 채팅 박스를 스크롤하여 가장 최근의 메시지가 표시되도록 합니다.
                   chatbox.scrollTop = chatbox.scrollHeight;
                   
                   // 요청이 성공적으로 처리되면 입력 필드를 초기화합니다.
                   messageInput.value = '';
               },
               error: function(xhr, status, error) {
                   // 요청이 실패했을 때의 작업
                   console.error("Error sending message:", error);
               }
           });
       }
       // 엔터 키를 눌렀을 때 메시지를 보내는 이벤트 리스너 추가
          document.getElementById('message').addEventListener('keydown', function(event) {
              // 이벤트가 Enter 키를 감지하는지 확인합니다.
              if (event.key === 'Enter') {
                  // 기본 동작을 막습니다. (폼 제출 등)
                  event.preventDefault();
                  // 메시지를 보냅니다.
                  sendMessage();
              }
          });
    
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