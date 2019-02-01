package io.zerone.simplechat.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import io.zerone.simplechat.VO.User;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSession session;
	
	public int insertUser(User user) {
		int result = 0;
		
		return result;
		
	}
	
}
