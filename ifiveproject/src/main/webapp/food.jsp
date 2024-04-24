<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.DietDAO"%>
<%@page import="com.smhrd.model.Diet"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>index</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
</head>
<style>
    .food-list {
        list-style-type: none;
        padding: 0;
    }
    .food-list li {
        display: flex;
        justify-content: space-between;
        margin-bottom: 5px;
    }
    .food-name {
        flex: 1;
    }

    #searchBar {
        overflow-y: auto;
        max-height: 200px;
        max-width: 500px;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
    }
</style>
<body>

    <input type="text" id='search_area'>
    <button id="search_button">찾기</button>
    <div id="searchBar"></div>
    <div id="selectedItems"></div>


         <%
            Member loginMember = (Member)session.getAttribute("loginMember");
            Diet eat_food = (Diet)session.getAttribute("eat_food");                      
            List<Diet> dietList = null;     
            
            
               String user_id = loginMember.getUser_id();
               String eat_date = request.getParameter("date");
               System.out.print(user_id+eat_date);
               
               Diet cal = new Diet(user_id,eat_date);              
               dietList = new DietDAO().dietList(cal);
               System.out.print(dietList.size());
               pageContext.setAttribute("dietList", dietList);
         %>
     
          
            <table>
            <c:forEach items="${dietList }" var="diet" varStatus="s">
               <tr>
                <td>${s.count }</td>
                <td>${diet.food_name}</td>
                <td>${diet.intake_calory }</td>
               </tr>
            </c:forEach>
            </table>   






    <script>
        // DOMContentLoaded 이벤트를 사용하여 페이지가 완전히 로드된 후에 함수를 실행
        document.addEventListener('DOMContentLoaded', function () {
            // search_button() 함수를 클릭 이벤트에 연결
            document.getElementById('search_button').addEventListener('click', search_button);
        });

        // 검색 버튼 클릭 시 실행될 함수
        function search_button() {
            var keyword = $('#search_area').val();

            $.ajax({
                url: 'GetFoodNames.do',
                type: 'GET',
                data: { 'keyword': keyword },
                success: function (results) {
                    console.log('Received data:', results);
                    displayResults(results);
                },
                error: function (xhr, status, error) {
                    console.error('Error:', error);
                }
            });
        }

        function displayResults(results) {
            var list = '<ul class="food-list">';
            $.each(results, function (index, item) {
                list += '<li class="food-item"><span class="food-name">' + item.food_name + '</span><span class="calory">칼로리: ' + item.intake_calory + '</span></li>';
            });
            list += '</ul>';

            $('#searchBar').html(list);

            $('.food-item').click(function () {
                var selectedText = $(this).find('.food-name').text();
                var selectedCalory = $(this).find('.calory').text().split(':')[1].trim(); // 숫자 부분만 추출하여 전송
                var selectedDate = getSelectedDateFromURL();
                console.log(selectedCalory);
                $('#selectedItems').append('<div>' + selectedText + "칼로리 :  " + selectedCalory + '</div>');

                
                $.ajax({
                    url: 'DietService.do',
                    type: 'POST',
                    data: { 'food_name': selectedText,
                       'intake_calory': selectedCalory,
                       'date': selectedDate
                    },
                    success: function(response) {
                        console.log('Data sent successfully:', response);
                    },
                    error: function(xhr, status, error) {
                        console.error('Error:', error);
                    }
                });
            });
        }
        
        
        function getSelectedDateFromURL() {
            // URL에서 날짜 파라미터 가져오기
            var urlParams = new URLSearchParams(window.location.search);
            return urlParams.get('date');
        }
    </script>
    
    
    
    

</body>
</html>