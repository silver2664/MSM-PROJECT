package com.project.member.service;

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
	

}
