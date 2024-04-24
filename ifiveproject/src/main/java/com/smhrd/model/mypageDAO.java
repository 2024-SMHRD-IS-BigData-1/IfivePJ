package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class mypageDAO {
   SqlSessionFactory sqlSessionFactory=  SqlSessionManager.getSqlSession();
   
   public int update(mypage mypage) {
      SqlSession session = sqlSessionFactory.openSession(true);
      int cnt = session.update("com.smhrd.db.mypageMapper.update",mypage);
      session.close();
      return cnt;
      
      
   }

}