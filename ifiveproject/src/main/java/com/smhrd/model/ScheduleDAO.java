package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ScheduleDAO {
	
	SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
	
	public int join(Schedule schedule) {
				
		System.out.println("dao");
		SqlSession session =  sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.ScheduleMapper.join",schedule);		
		session.close();
		return cnt;
	}

	 public List<Schedule> selectAllByUserId(String userId) { // 특정 사용자의 모든 일정 데이터를 가져오는 메서드
		 System.out.println("dao2");
		 try (SqlSession session = sqlSessionFactory.openSession(true)) {
	            List<Schedule> schedules = session.selectList("com.smhrd.db.ScheduleMapper.selectAllByUserId", userId);
	            return schedules;
	        } catch (Exception e) {
	            e.printStackTrace();
	            return null; // 예외 발생 시 null 반환
	        }
	    }
}
	
