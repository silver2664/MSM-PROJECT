package com.project.member.dao;

import com.project.member.vo.MemberVO;
import com.project.msm.util.RegisterRequest;

public interface UserDAO {
	
	// 01. email select
	public MemberVO selectByEmail(String mEmail) throws Exception;
	
	// 02. id select
	public MemberVO selectById(String mId) throws Exception;
	
	// 03. Sign Up
	public void insertUser(RegisterRequest regReq) throws Exception;
}
