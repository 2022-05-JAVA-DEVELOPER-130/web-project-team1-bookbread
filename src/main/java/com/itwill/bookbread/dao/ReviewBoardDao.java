package com.itwill.bookbread.dao;

import java.sql.Connection;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.itwill.bookbread.dto.ReviewBoard;

public class ReviewBoardDao {
	private DataSource dataSource;
	public ReviewBoardDao() throws Exception{
		BasicDataSource basicDataSource=new BasicDataSource();
		
		Properties properties=new Properties();
		properties.load(ReviewBoardDao.class.getResourceAsStream("jdbc.properties"));
		basicDataSource.setDriverClassName(properties.getProperty("driverClassName"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("username"));
		basicDataSource.setPassword(properties.getProperty("password"));
		this.dataSource=basicDataSource;
	}
	
	/*
	 * 새로운 리뷰생성
	 */
	public int create(ReviewBoard reviewBoard) throws Exception{
		Connection con=null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//끝
