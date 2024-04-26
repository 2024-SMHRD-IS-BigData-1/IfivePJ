package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.db.SqlSessionManager;

public class CaloryDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int join(Calory daycal) {
		System.out.println("DAO");
		SqlSession session =  sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.CaloryMapper.join",daycal);		
		session.close();
		return cnt;
	}
	
	
	public List<Calory> selectAllByUserId(String user_id) { 
	    System.out.println("dao2");
	    SqlSession session =  sqlSessionFactory.openSession(true);
	    List<Calory> calory = session.selectList("com.smhrd.db.CaloryMapper.selectAllByUserId", user_id);
	    session.close();
	    return calory;
	}
	

}
