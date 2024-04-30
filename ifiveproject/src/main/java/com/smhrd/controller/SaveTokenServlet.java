package com.smhrd.controller;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

@WebServlet("/SaveTokenServlet")
public class SaveTokenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 요청 body에서 JSON 데이터를 읽어옴
        BufferedReader reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        String json = sb.toString();

        // JSON 데이터를 파싱하여 accessToken 추출
        JSONObject jsonObject = new JSONObject(json);
        String accessToken = jsonObject.getString("accessToken");
        System.out.println(accessToken);

        // accessToken을 사용하여 사용자의 ID를 추출
        String userId = getUserIdFromKakaoAPI(accessToken);
        // 임시값 설정
        String userPw = "a";
        String height = "180";
        String weight = "70";
        String targetWeight = "65";
        String userType = "normal"; // 사용자 타입을 임시값으로 설정

        // 사용자 ID와 임시값을 데이터베이스에 저장

      Member member = new Member(userId, userPw);
      Member loginMember = new MemberDAO().login(member);
      
      if(loginMember != null) {
         HttpSession session = request.getSession();
         session.setAttribute("user_id", userId);
         session.setAttribute("loginMember", loginMember);
         System.out.println("로그인 성공!");

         
      }else {
         saveUserToDatabase(userId,userPw, height, weight, targetWeight, userType);
         System.out.println("로그인 실패");


      }
      
        // 응답 전송
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("토큰이 성공적으로 저장되었습니다");
        out.flush();
        out.close();

    }

    // 카카오 API를 사용하여 accessToken을 통해 사용자의 ID를 추출하는 메서드
    private String getUserIdFromKakaoAPI(String accessToken) {
        String userId = null;
        try {
            // 카카오 API 엔드포인트 설정
            URL url = new URL("https://kapi.kakao.com/v2/user/me");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "Bearer " + accessToken);

            // 응답 받기
            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String inputLine;
            StringBuilder response = new StringBuilder();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();
            
            // JSON 형식의 응답을 파싱하여 객체로 변환
            JSONObject jsonResponse = new JSONObject(response.toString());

            // "id" 필드의 값을 추출
            long id = jsonResponse.getLong("id");

            // 추출된 id 값을 문자열로 변환하여 userId에 저장
            userId = Long.toString(id);

            // 추출된 userId 값 출력
            System.out.println("User ID: " + userId);
            
            
        } catch (IOException | JSONException e) {
            e.printStackTrace();
        }
        return userId;
    }

    // 사용자의 ID와 추가 정보를 데이터베이스에 저장하는 메서드
    private void saveUserToDatabase(String userId,String userPw, String height, String weight, String targetWeight, String userType) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
           
         try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
         } catch (ClassNotFoundException e) {
            e.printStackTrace();
         }
         String url ="jdbc:oracle:thin:@project-db-campus.smhrd.com:1524:xe";
         String username="campus_24IS_BIG3_P2_4";
         String password ="smhrd4" ;
         java.sql.Timestamp currentTime = new java.sql.Timestamp(System.currentTimeMillis());

           
           // 데이터베이스 연결
            conn = DriverManager.getConnection(url,username, password);

            // SQL 쿼리 준비
            String query = "INSERT INTO user_info (USER_ID, USER_PW, USER_HEIGHT, USER_WEIGHT, USER_TARGET_WEIGHT, JOINED_AT, USER_TYPE) VALUES (?, ?, ?, ?, ?, ?, ?)";

            pstmt = conn.prepareStatement(query);

            // 사용자 정보를 쿼리에 바인딩
            pstmt.setString(1, userId);
            pstmt.setString(2, userPw);
            pstmt.setString(3, height);
            pstmt.setString(4, weight);
            pstmt.setString(5, targetWeight);
            pstmt.setTimestamp(6, currentTime);
            pstmt.setString(7, userType);

            
            // 쿼리 실행
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 리소스 정리
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}