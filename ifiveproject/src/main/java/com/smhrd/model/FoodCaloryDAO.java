package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.db.SqlSessionManager;

public class FoodCaloryDAO {
	SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();

	public List<FoodCalory> foodList(String food) {
		System.out.println("DAO");
		SqlSession session = sqlSessionFactory.openSession(true);
		List<FoodCalory> foodList = session.selectList("com.smhrd.db.FoodCaloryMapper.showfood",food);
		session.close();
		System.out.println("foodList : " + foodList.size());
		return foodList;
	}


	
}
