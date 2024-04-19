package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {

	
	// 기능을 할 때마다 세션을 생성해줄 수 있는 factory 
	SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
	
	public int join(Member member) { // id, pw
		
		System.out.println("member");
		
		// factory를 사용해서 세선 생선 (sql 실행, close, connection...)
		SqlSession session =  sqlSessionFactory.openSession(true);
					// 경로, value
		int cnt = session.insert("com.smhrd.db.MemberMapper.join",member);		
		session.close();
		return cnt;
	}




	

}
