package com.itwill.bookbread.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

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
			
			pstmt1 = con.prepareStatement(OrdersSQL.INSERT_ORDERS);
			pstmt1.setString(1, orders.getO_desc());
			pstmt1.setInt(2, orders.getO_price());
			pstmt1.setString(3, orders.getUserid());
			pstmt2 = con.prepareStatement(OrdersSQL.INSERT_ORDER_ITEM);
			
			con.setAutoCommit(false);
			
			
			con.commit();
		} catch (Exception e) {
			e.printStackTrace();
			con.rollback();
			throw e;
		}
		
		return 0;
	}
	
}
