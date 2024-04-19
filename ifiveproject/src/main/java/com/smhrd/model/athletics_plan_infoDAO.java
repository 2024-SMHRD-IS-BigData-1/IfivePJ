package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class athletics_plan_infoDAO {

SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
	
	public int select (athletics_plan_info ath) { 
				
		SqlSession session =  sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.athleticsMapper.select",ath);		
		session.close();
		return cnt;
	}
}
