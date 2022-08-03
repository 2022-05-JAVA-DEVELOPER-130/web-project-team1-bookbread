package com.itwill.bookbread.service;

import com.itwill.bookbread.dao.CartDao;
import com.itwill.bookbread.dao.OrdersDao;
import com.itwill.bookbread.dao.ProductDao;

public class OrdersService {
	public OrdersDao ordersDao;
	public CartDao cartDao;
	public ProductDao productDao;
	public OrdersService() throws Exception{
		ordersDao = new OrdersDao();
		cartDao = new CartDao();
		productDao = new ProductDao();
	}
	/*
	 * 상품리스트에서 직접 주문
	 */
	public int create(String userId, int oi_qty, int p_no) throws Exception{
		
		
		
		
		return 0;
	}
	
	
	
	
	
}
