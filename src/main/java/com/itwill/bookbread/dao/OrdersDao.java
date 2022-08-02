package com.itwill.bookbread.dao;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

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
	
	
}
