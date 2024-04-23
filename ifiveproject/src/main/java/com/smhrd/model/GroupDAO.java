package com.smhrd.model;

import java.util.List;

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
	
	public List<Group> groupList(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Group> groupList = session.selectList("com.smhrd.db.GroupMapper.groupList");
		session.close();
		return groupList;
	}





	

}
