package com.project.board.dao;

import java.util.List;

import com.project.board.vo.BoardVO;
import com.project.board.vo.Criteria;

public interface BoardDAO {
	
	// 게시글 작성
	public void write(BoardVO boardVO) throws Exception;
	
	// 리스트 조회
	public List<BoardVO> list(Criteria cri) throws Exception;
	
	// 게시물 갯수
	public int listCount() throws Exception;
	
	// 게시물 조회
	public BoardVO read(int bno) throws Exception;
	
	// 게시물 수정
	public void update(BoardVO boardVO) throws Exception;
	
	// 게시물 삭제
	
	public void delete(int bno) throws Exception;
}
