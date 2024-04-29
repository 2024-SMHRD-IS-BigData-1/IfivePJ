package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class JoiningGroupDAO {
	
	SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
	

	public int join(JoiningGroup JoiningGroup) { 				
		SqlSession session =  sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.JoiningGroupMapper.join",JoiningGroup);		
		session.close();
		return cnt;
	}
	
	public List<JoiningGroup> JoiningGroupList(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<JoiningGroup> JoiningGroupList = session.selectList("com.smhrd.db.JoiningGroupMapper.JoiningGroupList",user_id);
		session.close();
		return JoiningGroupList;
	}
	
//	 public List<JoiningGroup> GroupPersonList(String group_name) { 
//		 SqlSession session = sqlSessionFactory.openSession(true); 
//		 List<JoiningGroup> GroupPersonList =session.selectList("com.smhrd.db.JoiningGroupMapper.GroupPersonList", group_name); 
//		 session.close(); 
//		 return GroupPersonList;
//	  
//	 }
	 
	 

}
