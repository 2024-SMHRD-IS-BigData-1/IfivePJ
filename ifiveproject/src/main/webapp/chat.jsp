<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chat Application</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <div id="chatbox" style="width:400px;height:300px;border:1px solid black;overflow-y:auto;"></div>
    <input type="text" id="message" />
    <button onclick="sendMessage()">Send</button>

    <script>
        function sendMessage() {
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