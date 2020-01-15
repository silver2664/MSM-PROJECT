package com.project.msm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.msm.command.BCommand;
import com.project.msm.command.BJoinCommand;
import com.project.msm.dao.BDaoTemplate;
import com.project.msm.util.Constant;

@Controller
public class BController {
	
	private JdbcTemplate template;
	private PlatformTransactionManager transactionManager;
	private BCommand com;
	private BDaoTemplate dao;
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}
	
	@Autowired
	public void setTransactionmanager(PlatformTransactionManager transactionManager) {
		this.transactionManager = transactionManager;
		Constant.transactionManager = this.transactionManager;
	}
	
	@Autowired
	public void setDao(BDaoTemplate dao) {
		this.dao = dao;
		Constant.dao = this.dao;
	}
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping ("home") 
	public String home(HttpServletRequest request, HttpServletResponse response) { 
		return "home"; 
	}	
	
	@RequestMapping("test")
	public String test() {
		return "testmodal";
	}
	
	@RequestMapping("loginError")
	public String loginerror() {
		return "loginerror";
	}
	
	
	@RequestMapping (value = "login", method = RequestMethod.GET)
	public ModelAndView login(
			@RequestParam(value = "log", required = false) String log,
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		
		ModelAndView model = new ModelAndView();
		
		if(log != null) {
			model.addObject("log", "before login!");
		}
		
		if(error != null) {
			model.addObject("error", "Invalid username and password!");
		}
		
		if(logout != null) {
			model.addObject("msg", "You've been logged out successfully");
		}
		

		model.setViewName("home");		
		return model;
	}
	
	
	@RequestMapping ("join")
	public String join(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("join");
		com = new BJoinCommand(passwordEncoder);
		com.execute(model, request);
		String result = (String)request.getAttribute("result");
		response.setContentType("text/plain; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		if(result.equals("join-success"))
			return "home";
		else
			return "test";
	}

}
