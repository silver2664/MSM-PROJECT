package com.project.msm.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import com.project.msm.dao.BDaoTemplate;
import com.project.msm.dto.UserDto;
import com.project.msm.util.Constant;

public class BJoinCommand implements BCommand {
	
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public BJoinCommand(BCryptPasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public void execute(Model model, HttpServletRequest request) {
		String bId = request.getParameter("mId");
		String bPw = request.getParameter("mPw");
		String bEmail = request.getParameter("mEmail");
		
		String bPw_org = bPw;
		bPw = passwordEncoder.encode(bPw_org);
		System.out.println(bPw + " size " + bPw.length());
		
		UserDto dto = new UserDto(bId, bPw, bEmail);
		BDaoTemplate dao = Constant.dao;
		String result = dao.join(dto);
		request.setAttribute("result", result);

	}

}
