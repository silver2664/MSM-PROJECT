package com.project.cart.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.cart.vo.CartVO;

@Repository
public class CartDAOImpl implements CartDAO {
	
	@Inject
	SqlSession sqlSession;
	
	
	// 01. 장바구니 추가
	@Override
	public void insert(CartVO vo) {
		sqlSession.insert("cartMapper.insertCart", vo);
	}
		
	// 02. 장바구니 목록
	@Override
	public List<CartVO> listCart(String userId) {
		return sqlSession.selectList("cartMapper.listCart", userId);
	}
		
	// 03. 장바구니 삭제
	@Override
	public void delete(int cartId) {
		sqlSession.delete("cartMapper.deleteCart", cartId);
	}
	
	// 04. 장바구니 수정
	@Override
	public void modifyCart(CartVO vo) {
		sqlSession.update("cartMapper.modifyCart", vo);
	}
		
	// 05. 장바구니 금액 합계
	@Override
	public int sumMoney(String userId) {
		return sqlSession.selectOne("cart.sumMoney", userId);
	}
		
	// 06. 장바구니 동일한 상품 레코드 확인
	@Override
	public int countCart(int productId, String userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productId", productId);
		map.put("userId", userId);
		return sqlSession.selectOne("cartMapper.countCart", map);
	}
		
	// 07. 장바구니 상품수량 변경
	@Override
	public void updateCart(CartVO vo) {
		sqlSession.update("cartMapper.sumCart", vo);
	}
		
}
