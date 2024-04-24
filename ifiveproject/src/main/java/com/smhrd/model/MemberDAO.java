package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
	
	SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
	
	public int join(Member member) { // id, pw
				
		SqlSession session =  sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.MemberMapper.join",member);		
		session.close();
		return cnt;
	}

	public Member login(Member member) {		
		SqlSession session = sqlSessionFactory.openSession(true);
		System.out.println("dao");
		Member loginMember = session.selectOne("com.smhrd.db.MemberMapper.login", member);
		session.close();
		return loginMember;
	}

	public Member idCheck(String input_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		Member member = (Member)session.selectOne("com.smhrd.db.MemberMapper.idCheck", input_id);
		session.close();
		return member;
	}

	




	

}
