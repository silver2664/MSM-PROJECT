package com.project.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.project.member.dao.UserLoginDAO;
import com.project.member.vo.MemberVO;

public class UserLoginService implements UserDetailsService {
	
	@Autowired
	private UserLoginDAO dao;
	
	@Override
	public MemberVO loadUserByUsername(String mId) throws UsernameNotFoundException {
		MemberVO vo = dao.getUserById(mId);
		if(vo == null) {
			throw new UsernameNotFoundException(mId);
		}
		return vo;
	}

}
