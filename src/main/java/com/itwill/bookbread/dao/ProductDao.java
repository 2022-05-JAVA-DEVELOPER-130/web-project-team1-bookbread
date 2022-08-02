package com.itwill.bookbread.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.itwill.bookbread.dto.Product;
import com.itwill.bookbread.dto.BookType;
import com.itwill.bookbread.sql.ProductSQL;

public class ProductDao {

	private DataSource dataSource;

	public ProductDao() throws Exception{
		Properties properties = new Properties();
		properties.load(this.getClass().getResourceAsStream("/com/itwill/bookbread/common/jdbc.properties"));
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(properties.getProperty("driverClass"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("user"));
		basicDataSource.setPassword(properties.getProperty("password"));
		dataSource = basicDataSource;
	}

	// 전체 도서 리스트
	public List<Product> selectAll() throws Exception {
		List<Product> productList = new ArrayList<Product>();
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(ProductSQL.PRODUCT_LIST);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			productList.add(new Product(rs.getInt("p_no"),
					rs.getString("p_name"),
					rs.getString("p_author"),
					rs.getString("p_publisger"),
					rs.getString("p_publish_date"),
					rs.getInt("p_price"),
					rs.getString("p_image"),
					rs.getString("p_detail"),
					new BookType(rs.getInt("type_no"),null)
							));
		}
		rs.close();
		con.close();
		pstmt.close();
		return productList;
	}
	
	// 도서 이름으로 찾기
	public Product selectByName(String p_name) throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(ProductSQL.PRODUCT_BY_NAME);
		pstmt.setString(1,"p_name");
		ResultSet rs = pstmt.executeQuery();
		Product findProductName = null;
		if(rs.next()) {
			findProductName = new Product(rs.getInt("p_no"),
										rs.getString("p_name"),
										rs.getString("p_author"),
										rs.getString("p_publisher"),
										rs.getString("p_publisher"),
										rs.getString("p_publish_date")
										rs.getInt("p_price"),
										rs.getString("p_image"),
										rs.getString("p_detail"),
										new Booktype(rs.getInt("type_no"),null)
										);
		}
		rs.close();
		con.close();
		pstmt.close();
		return findProductName;
	
	
}
