package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class athletics_plan_infoDAO {

    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

    public int insert(athletics_plan_info ath) {
        try (SqlSession session = sqlSessionFactory.openSession(true)) {
            int cnt = session.insert("com.smhrd.db.athleticsMapper.insert", ath);
            return cnt;
        } catch (Exception e) {
            e.printStackTrace();
            return -1; // 실패 시 -1 반환
        }
    }
}
