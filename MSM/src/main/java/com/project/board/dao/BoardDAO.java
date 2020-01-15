package com.project.board.dao;

import java.util.List;

import com.project.board.vo.BoardVO;

public interface BoardDAO {
	
	// �Խñ� �ۼ�
	public void write(BoardVO boardVO) throws Exception;
	
	// ����Ʈ ��ȸ
	public List<BoardVO> list() throws Exception;
	
	// �Խù� ��ȸ
	public BoardVO read(int bno) throws Exception;
	
	// �Խù� ����
	public void update(BoardVO boardVO) throws Exception;
	
	// �Խù� ����
	
	public void delete(int bno) throws Exception;
}
