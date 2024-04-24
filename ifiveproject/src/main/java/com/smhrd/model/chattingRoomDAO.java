package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class chattingRoomDAO {
	
	SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
	
	public int join(chattingRoom chattingRoom) { 
		
		SqlSession session =  sqlSessionFactory.openSession(true);
		int cnt2 = session.insert("com.smhrd.db.chattingRoomMapper.join",chattingRoom);		
		session.close();
		return cnt2;
	}
	
	public List<chattingRoom> chattingRoomList() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<chattingRoom> chattingRoom = session.selectList("com.smhrd.db.chattingRoomMapper.chattingRoomList");
		session.close();
		return chattingRoom;
	}
	
	
}
