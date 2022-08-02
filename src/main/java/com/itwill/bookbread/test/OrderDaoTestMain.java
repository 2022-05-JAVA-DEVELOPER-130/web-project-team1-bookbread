package com.itwill.bookbread.test;

import java.util.ArrayList;
import java.util.List;

import com.itwill.bookbread.dao.OrdersDao;
import com.itwill.bookbread.dto.OrderItem;
import com.itwill.bookbread.dto.Orders;
import com.itwill.bookbread.dto.Product;

public class OrderDaoTestMain {

	public static void main(String[] args) throws Exception{
	OrdersDao orderDao = new OrdersDao();
		
		/*
		 * 1.상품에서 직접 주문
		 -상품번호 1번
		 -상품수량 1개  수량은 왜 무조건 1개임?
		 
		 */
		List<OrderItem> orderItemListDirect = new ArrayList<OrderItem>();
		
		Orders newOrderDirect = new Orders(0,
											orderItemListDirect.get(0).getProduct().getP_name()+"외"+(orderItemListDirect.size()-1)+"종", 
											null, 
											0, 
											"soyoon", 
											orderItemListDirect);
		 
		  

		 /*
		 * 2.cart에서 주문
		 */
	
	
		List<OrderItem> orderItemList = new ArrayList<OrderItem>();
		orderItemList.add(new OrderItem(0, 0, 0, new Product(0, null, null, null, null, 0, null, null, 0)));
		
		Orders newOrder = new Orders(0, null, null, 0, null, orderItemList);
		orderDao.create(newOrder);
				
				
	}
	
}
