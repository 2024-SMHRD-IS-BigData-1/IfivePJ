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
	
	public List<Schedule> selectAllByUserId(String userId) { 
	    System.out.println("dao2");
	    SqlSession session =  sqlSessionFactory.openSession(true);
	    List<Schedule> schedules = session.selectList("com.smhrd.db.ScheduleMapper.selectAllByUserId", userId);
	    session.close();
	    return schedules;
	}

	
	public List<Schedule> dayList(Schedule day) {
		System.out.println("dayList");
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Schedule> dayList = session.selectList("com.smhrd.db.ScheduleMapper.dayList", day);
		session.close();
		return dayList;
	}


	
	


	public void deleteSchedule(int plan_idx) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.delete("com.smhrd.db.ScheduleMapper.deleteSchedule", plan_idx);
		session.close();		
	}
	

}
	
