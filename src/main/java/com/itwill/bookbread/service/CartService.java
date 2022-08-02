package com.itwill.bookbread.service;

import com.itwill.bookbread.dao.CartDao;
import com.itwill.bookbread.dto.Cart;
import com.itwill.bookbread.dto.Member;
import com.itwill.bookbread.dto.Product;

public class CartService {
	private CartDao cartDao;

	public CartService() throws Exception {
		cartDao = new CartDao();
	}
	/*
	 * 해당 제품이 없으면 카트 추가 / 있으면 카트 수량 업데이트
	 */
	public int addCart(String userId, int p_no, int cart_qty) throws Exception{
		int check = cartDao.checkProduct(new Cart(0, cart_qty,
										 new Member(userId, "", "", "", "", "", "", "", ""), 
										 new Product(p_no, "", "", "", "", 0, "", "", null)));
		
		return 0;
	}
	
	
	
	
	
	
	
	
	
}
