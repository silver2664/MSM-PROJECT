package com.project.msm.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.goods.service.GoodsService;

@Controller
@RequestMapping("/product/*")
public class GoodsController {
	
	private static final Logger logger = LoggerFactory.getLogger(GoodsController.class);
	
	@Inject
	GoodsService service;
	
	// 01. 상품전체목록
	@RequestMapping(value = "/product/listView", method = RequestMethod.GET)
	public ModelAndView list(ModelAndView mav) {
		logger.info("Goods List");
		mav.setViewName("/product/listView");
		mav.addObject("list", service.listProduct());
		return mav;
	}
	
	// 02. 상품상세보기
	@RequestMapping(value = "/product/detailView/${mgNum}")
	public ModelAndView detail(@PathVariable("mgNum") int mgNum, ModelAndView mav) {
		logger.info("Goods Detail");
		mav.setViewName("/product/detailView");
		mav.addObject("vo", service.detailProduct(mgNum));
		return mav;
	}

}
