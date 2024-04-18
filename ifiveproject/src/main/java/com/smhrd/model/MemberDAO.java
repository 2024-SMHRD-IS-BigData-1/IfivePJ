package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
	
	SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
	
	public int join(Member member) { // id, pw
		
		System.out.println("member");
		
		SqlSession session =  sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.MemberMapper.join",member);		
		session.close();
		return cnt;
	}

	public Member login(Member member) {
		System.out.println("member");		
		SqlSession session = sqlSessionFactory.openSession(true);
		Member loginMember = session.selectOne("com.smhrd.db.MemberMapper.login", member);
		session.close();
		return loginMember;
	}
	




	

}
