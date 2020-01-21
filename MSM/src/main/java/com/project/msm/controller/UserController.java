package com.project.msm.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.service.UserService;
import com.project.member.vo.MemberVO;
import com.project.msm.exception.AlreadyExistingEmailException;
import com.project.msm.exception.AlreadyExistingIdException;
import com.project.msm.util.CommandMap;
import com.project.msm.util.RegisterRequest;
import com.project.msm.util.RegisterRequestValidator;

@Controller // bean 인스턴스 생성
@RequestMapping("/member/*") // Class Level Mapping 'member'로 들어오는 모든 요청에 대한 처리.
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Resource(name = "userService")
	UserService userService;
	
	@RequestMapping(value = "/member/step1", method = RequestMethod.GET)
	// Handler Level Mapping : 요청 url에 대해 해당 메서드가 함. (* member/step1의 GET 요청에 대한 처리를 함. )
	// value : 요청 url로 요청이 들어오면 이 메서드가 수행함. method : 요청 method 명시.
	public void step1() throws Exception {		
		logger.info("signUp step1");
	}
	
	/*
	@RequestMapping("/member/step2")
	public ModelAndView step2(@RequestParam(value="agree", defaultValue="false") Boolean agree) throws Exception {
		logger.info("signUp step2.jsp");
		if(!agree) {
			ModelAndView mv = new ModelAndView("/member/step1");
			return mv;
		}
		ModelAndView mv = new ModelAndView("/member/step2");
		mv.addObject("registerRequest", new RegisterRequest());
		return mv;
	}
	*/
	
	@RequestMapping(value = "/member/step2", method = RequestMethod.POST)
	public String step2(@RequestParam(value="agree", defaultValue="false") Boolean agree) throws Exception {
		
		logger.info("signUp step2");
		
		if(!agree) {
			return "/member/step1";
			
		}
		return "/member/step2";		
	}
	
	@RequestMapping(value = "/member/step3", method = RequestMethod.POST)
	public ModelAndView step3(ModelAndView mv, MemberVO memberVO) throws Exception {
		logger.info("signUp step3");
		userService.insertUser2(memberVO);
		mv.setViewName("/home");
		return mv;
	}
	
	@RequestMapping(value = "/member/idCheck", method = RequestMethod.POST)
	@ResponseBody
	public int idCheck(CommandMap commandMap) throws Exception {
		logger.info("controller idCheck");
	
		int cnt = userService.idCheck(commandMap.getMap());
		System.out.println("count : " + cnt);
		
		return cnt;
	}
	
	/*
	@RequestMapping(value = "/member/step3", method=RequestMethod.POST)
	public ModelAndView step3(RegisterRequest regReq, Errors errors) throws Exception {
		
		new RegisterRequestValidator().validate(regReq, errors);
		ModelAndView mv = new ModelAndView();
		
		if(errors.hasErrors()) {
			mv.setViewName("/member/step2");
			return mv;
		}
		
		try {
			userService.insertUser(regReq);
		}
		catch (AlreadyExistingEmailException e) {
			errors.rejectValue("mEmail", "duplicate", "이미 가입된 이메일입니다.");
			mv.setViewName("/member/step2");
			return mv;
		}
		catch (AlreadyExistingIdException e) {
			errors.rejectValue("mId", "duplicate", "이미 가입된 ID입니다.");
			mv.setViewName("/member/step2");
			return mv;
		}
		mv.setViewName("/member/step3");
		return mv;
	}
	*/
}
