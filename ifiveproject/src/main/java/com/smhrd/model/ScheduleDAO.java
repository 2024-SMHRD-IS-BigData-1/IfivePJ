package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ScheduleDAO {
    
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
    
    public int join(Schedule schedule) {
                
        System.out.println("dao");
        try(SqlSession session = sqlSessionFactory.openSession(true)) {
            int cnt = session.insert("com.smhrd.db.ScheduleMapper.join",schedule);      
            return cnt;
        } catch (Exception e) {
            e.printStackTrace();
            return 0; // 예외 발생 시 0 반환
        }
    }

    public List<Schedule> selectAll() { // 모든 일정 데이터를 가져오는 메서드
        
        System.out.println("dao2");
    	try (SqlSession session = sqlSessionFactory.openSession(true)) {
        	
            List<Schedule> schedules = session.selectList("com.smhrd.db.ScheduleMapper.selectAll");
            return schedules;
        } catch (Exception e) {
            e.printStackTrace();
            return null; // 예외 발생 시 null 반환
        }
    }
    
}
