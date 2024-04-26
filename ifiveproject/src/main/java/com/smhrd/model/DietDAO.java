package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.db.SqlSessionManager;

public class DietDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int add(Diet eat_food) {
		System.out.println("DAO");
		SqlSession session =  sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.DietMapper.add",eat_food);		
		session.close();
		return cnt;
	}
	
	public List<Diet> dietList(Diet cal) {
		System.out.println("listdao");
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Diet> dietList = session.selectList("com.smhrd.db.DietMapper.dietList", cal);
		session.close();
		return dietList;
	}


	
	public void deleteDiet(int diet_idx) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.delete("com.smhrd.db.DietMapper.deleteDiet", diet_idx);
		session.close();
	}
	
}
