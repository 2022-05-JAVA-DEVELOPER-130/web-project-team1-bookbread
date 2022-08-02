package com.itwill.bookbread.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.itwill.bookbread.dto.OrderItem;
import com.itwill.bookbread.dto.Orders;
import com.itwill.bookbread.sql.OrdersSQL;

public class OrdersDao {
	private DataSource dataSource;
	public OrdersDao() throws Exception{
		 Properties properties = new Properties();
		 properties.load(this.getClass().getResourceAsStream("/com/itwill/bookbread/common/jdbc.properties"));
		 BasicDataSource basicDataSource = new BasicDataSource();
		 basicDataSource.setDriverClassName(properties.getProperty("driverClass"));
		 basicDataSource.setUrl(properties.getProperty("url"));
		 basicDataSource.setUsername(properties.getProperty("user"));
		 basicDataSource.setPassword(properties.getProperty("password"));
		 dataSource = basicDataSource;
	}
	
	/*
	 * 주문생성
	 */
	
	public int create (Orders orders) throws Exception{
		Connection con = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		try {
			con=dataSource.getConnection();
			con.setAutoCommit(false);
			/*
			 * transaction 시작
			 */
			
			//orders insert
			pstmt1 = con.prepareStatement(OrdersSQL.INSERT_ORDERS);
			pstmt1.setString(1, orders.getO_desc());
			pstmt1.setInt(2, orders.getO_price());
			pstmt1.setString(3, orders.getUserId());
			pstmt1.executeUpdate();
			
			//orderItem insert
			pstmt2 = con.prepareStatement(OrdersSQL.INSERT_ORDER_ITEM);
			
			for(OrderItem orderItem : orders.getOrderItemList()) {
			pstmt2.clearParameters(); //확실하게 하기 위해서 다 날리고 executeUpdate
			pstmt2.setInt(1, orderItem.getOi_qty());
			pstmt2.setInt(2, orderItem.getProduct().getP_no());
			pstmt2.executeUpdate();
			
			}
			/*
			 * transaction 종료(성공)
			 */
			con.commit();
			
			
		} catch (Exception e) {
			/*
			 * transaction 종료(실패)
			 */
			e.printStackTrace();
			con.rollback();
			throw e;
		}
		con.close();
		return 0;
	}
	
}
