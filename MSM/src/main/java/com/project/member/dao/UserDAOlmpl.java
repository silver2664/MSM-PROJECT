package com.project.member.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.member.vo.MemberVO;
import com.project.msm.util.RegisterRequest;

@Repository("userDAO")
public class UserDAOlmpl implements UserDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public MemberVO selectByEmail(String mEmail) throws Exception {
		return sqlSession.selectOne("userMapper.selectByEmail", mEmail);
	}

	@Override
	public MemberVO selectById(String mId) throws Exception {
		return sqlSession.selectOne("userMapper.selectByID", mId);
	}

	@Override
	public void insertUser(RegisterRequest regReq) throws Exception {
		sqlSession.insert("userMapper.insert", regReq);

	}

}
