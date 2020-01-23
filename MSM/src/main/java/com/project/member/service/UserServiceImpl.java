package com.project.member.service;


import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.project.member.dao.UserDAO;
import com.project.member.vo.MemberVO;
import com.project.msm.exception.AlreadyExistingEmailException;
import com.project.msm.exception.AlreadyExistingIdException;
import com.project.msm.util.RegisterRequest;

@Service("userService")
public class UserServiceImpl implements UserService {	
	
	@Resource(name="userDAO")
	private UserDAO userDAO;

	@Override
	public void insertUser(RegisterRequest regReq) throws Exception {
		
		MemberVO mEmail = userDAO.selectByEmail(regReq.getmEmail());
		
		if(mEmail != null) {
			throw new AlreadyExistingEmailException(regReq.getmEmail() + "is duplicate email.");
		}
		
		MemberVO mId = userDAO.selectById(regReq.getmId());
		
		if(mId != null) {
			throw new AlreadyExistingIdException(regReq.getmId() + "is duplicate email.");
		}
		
		userDAO.insertUser(regReq);
		
	}
	
	@Override
	public void insertUser2(MemberVO memberVO) throws Exception {
		userDAO.insertUser2(memberVO);
	}
	
	@Override
	public int idCheck(Map<String, Object> map) throws Exception {
		System.out.println("Service idCheck");
		return userDAO.idCheck(map);
		
	}
	
	@Override
	public int idCheck2(String mId) throws Exception {		
		System.out.println("idCheck2 method(service) mId : " + mId);
		int result = userDAO.idCheck2(mId);
		return result;
	}
	

}
