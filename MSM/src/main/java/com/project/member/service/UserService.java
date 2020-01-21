package com.project.member.service;


import java.util.HashMap;
import java.util.Map;

import com.project.member.vo.MemberVO;
import com.project.msm.util.RegisterRequest;

public interface UserService {
	
	
	
	public void insertUser(RegisterRequest regReq) throws Exception;
	
	public void insertUser2(MemberVO memberVO) throws Exception;
	
	public int idCheck(Map<String, Object> map) throws Exception;
}
