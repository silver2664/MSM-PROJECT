package com.project.msm.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.service.UserService;
import com.project.msm.exception.AlreadyExistingEmailException;
import com.project.msm.exception.AlreadyExistingIdException;
import com.project.msm.util.RegisterRequest;
import com.project.msm.util.RegisterRequestValidator;

@Controller
@RequestMapping("/member/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Resource(name = "userService")
	UserService userService;
	
	@RequestMapping(value = "/member/step1", method = RequestMethod.GET)
	public void step1() throws Exception {		
		logger.info("signUp step1.jsp");
	}
	
	@RequestMapping("/member/step2")
	public ModelAndView step2(@RequestParam(value="agree", defaultValue="false") Boolean agree) throws Exception {
		if(!agree) {
			ModelAndView mv = new ModelAndView("/memeber/step2");
			return mv;
		}
		ModelAndView mv = new ModelAndView("/member/step2");
		mv.addObject("registerRequest", new RegisterRequest());
		return mv;
	}	
	
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
			errors.rejectValue("email", "duplicate", "이미 가입된 이메일입니다.");
			mv.setViewName("/member/step2");
			return mv;
		}
		catch (AlreadyExistingIdException e) {
			errors.rejectValue("ID", "duplicate", "이미 가입된 ID입니다.");
			mv.setViewName("/member/step2");
			return mv;
		}
		mv.setViewName("/member/step3");
		return mv;
	}

}
