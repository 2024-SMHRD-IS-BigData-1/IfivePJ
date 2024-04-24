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


	
	
}
	
