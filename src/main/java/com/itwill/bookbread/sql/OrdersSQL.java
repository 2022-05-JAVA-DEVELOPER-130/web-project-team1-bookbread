package com.itwill.bookbread.sql;

public class OrdersSQL {
//주문생성
	public static final String INSERT_ORDERS="insert into orders(o_no,o_desc,o_date,o_price,userid) values(orders_o_no_SEQ.nextval,?,sysdate,?,?)";
	
	public static final String INSERT_ORDER_ITEM="insert into order_item(oi_no,oi_qty,o_no,p_no) values (order_item_oi_no_SEQ.nextval,?,orders_o_no_SEQ.currval,?)";
}
