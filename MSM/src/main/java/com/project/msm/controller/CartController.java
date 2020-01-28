package com.project.msm.controller;



import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.cart.service.CartService;
import com.project.cart.vo.CartVO;

@Controller
@RequestMapping(value = "/cart/*")
public class CartController {
	
	@Inject
	CartService service;
	
	
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	// 01. ��ٱ��� �߰�
	@RequestMapping(value = "/cart/insert")
	public String insert(@ModelAttribute CartVO vo, HttpSession session) {
		
		logger.info("��ٱ��� �߰�");
		
		String userId = (String) session.getAttribute("mId");
		System.out.println("userId : " + userId);
		vo.setUserId(userId);
		
		// ��ٱ��Ͽ� ���� ��ǰ�� �ִ��� �˻�
		int count = service.countCart(vo.getProductId(), userId);		
		
		if(count == 0) {
			// ������ insert
			service.insert(vo);
		} else {
			// ������ update
			service.updateCart(vo);
		}
		return "redirect:/cart/cartView";
	}

}
