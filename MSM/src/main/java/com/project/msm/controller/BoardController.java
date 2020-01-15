package com.project.msm.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.board.service.BoardService;
import com.project.board.vo.BoardVO;
import com.project.board.vo.Criteria;
import com.project.board.vo.PageMaker;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	// �Խ��� �� �ۼ� ȭ��
	@RequestMapping(value = "/board/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");		
	}
	
	// �Խ��� �� �ۼ�
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO) throws Exception{
			
		logger.info("write");
			
		service.write(boardVO);
			
		return "redirect:/board/list";
	}
	
	// ����Ʈ ��ȸ
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, Criteria cri) throws Exception{
		
		logger.info("list");
		
		model.addAttribute("list", service.list(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "board/list";
	}
	
	// �Խù� ��ȸ
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(BoardVO boardVO, Model model) throws Exception {
		
		logger.info("read");
		
		model.addAttribute("read", service.read(boardVO.getBno()));
		
		return "board/readView";		
		
	}
	
	// �Խù� ���� VIEW
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(BoardVO boardVO, Model model) throws Exception {
		
		logger.info("update View");
		
		model.addAttribute("update", service.read(boardVO.getBno()));
		
		return "board/updateView";		
		
	}
	
	// �Խù� ����
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardVO boardVO) throws Exception{
		
		logger.info("update");
		
		service.update(boardVO);
		
		return "redirect:/board/list";
	}
	
	// �Խù� ����
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardVO boardVO) throws Exception {
		
		logger.info("delete");
		
		service.delete(boardVO.getBno());
		
		return "redirect:/board/list";
	}

}
