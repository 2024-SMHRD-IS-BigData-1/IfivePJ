package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.db.SqlSessionManager;

public class DietDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int join(Diet DietInfo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.DeitMapper.insertDiet", DietInfo);
		session.close();
		return cnt;
	}

	
}
