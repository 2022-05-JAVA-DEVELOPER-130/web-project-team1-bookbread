package com.itwill.bookbread.sql;

public class OrdersSQL {
	/*
	 * 주문생성
	 */
	public static final String INSERT_ORDERS="insert into orders(o_no,o_desc,o_date,o_price,userid) values(orders_o_no_SEQ.nextval,?,sysdate,?,?)";
	
	public static final String INSERT_ORDER_ITEM="insert into order_item(oi_no,oi_qty,o_no,p_no) values (order_item_oi_no_SEQ.nextval,?,orders_o_no_SEQ.currval,?)";
	/*
	 * 주문전체조회
	 */
	public static final String ORDER_LIST_BY_USERID="select * from orders o join order_item oi on oi.o_no = o.o_no join product p on p.p_no = oi.p_no where o.userid= ?";
	
	/*
	 * 주문번호 1개 상세조회
	 */
	public static final String SELECT_ORDER_NO="select o_no from orders where userid =?";
	
	public static final String ORDER_LIST_BY_O_NO="select * from orders o join order_item oi on oi.o_no = o.o_no join product p on p.p_no = oi.p_no where o.userid= ? and o.o_no=?";
}
