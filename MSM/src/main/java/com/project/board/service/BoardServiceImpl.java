package com.project.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.board.dao.BoardDAO;
import com.project.board.vo.BoardVO;
import com.project.board.vo.Criteria;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;
	
	// �Խñ� �ۼ�
	@Override
	public void write(BoardVO boardVO) throws Exception {		
		dao.write(boardVO);
	}
	
	// ����Ʈ ��ȸ
	@Override
	public List<BoardVO> list(Criteria cri) throws Exception {		
		return dao.list(cri);
	}
	
	// �Խù� �� ����
	@Override
	public int listCount() throws Exception {
		return dao.listCount();
	}
	
	// �Խù� ��ȸ
	@Override
	public BoardVO read(int bno) throws Exception {
		return dao.read(bno);
	}
	
	// �Խù� ����
	@Override
	public void update(BoardVO boardVO) throws Exception {
		dao.update(boardVO);
	}
	
	// �Խù� ����
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}
}
