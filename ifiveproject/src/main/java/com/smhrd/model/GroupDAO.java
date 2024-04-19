package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class GroupDAO {
	
	SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
	
	public int join(Group group) { 				
		SqlSession session =  sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.GroupMapper.join",group);		
		session.close();
		return cnt;
	}






	

}
