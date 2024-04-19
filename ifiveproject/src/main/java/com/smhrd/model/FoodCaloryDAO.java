package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.db.SqlSessionManager;

public class FoodCaloryDAO {
	SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
	
	public FoodCalory Search(FoodCalory food) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.selectOne("com.smhrd.db.FoodCaloryMapper.Search",food);
		session.close();
		return food;
	}
	
}
