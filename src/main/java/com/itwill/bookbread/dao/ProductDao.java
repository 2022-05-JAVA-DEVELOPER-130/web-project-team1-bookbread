package com.itwill.bookbread.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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
		pstmt.setString(1, p_name);
		ResultSet rs = pstmt.executeQuery();
		Product findProductName = null;
		if(rs.next()) {
			findProductName = new Product(rs.getInt("p_no"),
										rs.getString("p_name"),
										rs.getString("p_author"),
										rs.getString("p_publisher"),
										rs.getString("p_publish_date")
										rs.getInt("p_price"),
										rs.getString("p_image"),
										rs.getString("p_detail"),
										new BookType(rs.getInt("type_no"),null)
										);
		}
		rs.close();
		con.close();
		pstmt.close();
		return findProductName;
	}
	
	// 저자 이름으로 찾기
	public Product selectByauthor(String p_author) throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(ProductSQL.PRODUCT_BY_AUTHOR);
		pstmt.setString(1, p_author);
		ResultSet rs = pstmt.executeQuery();
		Product findProductauthor = null;
		if(rs.next()) {
			findProductauthor = new Product(rs.getInt("p_no"),
										rs.getString("p_name"),
										rs.getString("p_author"),
										rs.getString("p_publisher"),
										rs.getString("p_publish_date")
										rs.getInt("p_price"),
										rs.getString("p_image"),
										rs.getString("p_detail"),
										new BookType(rs.getInt("type_no"),null)
										);
		}
		rs.close();
		con.close();
		pstmt.close();
		return findProductauthor;
	}
	
	// 출판사 이름으로 찾기
	public Product selectBypublisher(String p_publisher) throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(ProductSQL.PRODUCT_BY_PUBLISHER);
		pstmt.setString(1, p_publisher);
		ResultSet rs = pstmt.executeQuery();
		Product findProductpublisher = null;
		if(rs.next()) {
			findProductpublisher = new Product(rs.getInt("p_no"),
										rs.getString("p_name"),
										rs.getString("p_author"),
										rs.getString("p_publisher"),
										rs.getString("p_publish_date")
										rs.getInt("p_price"),
										rs.getString("p_image"),
										rs.getString("p_detail"),
										new BookType(rs.getInt("type_no"),null)
										);
		}
		rs.close();
		con.close();
		pstmt.close();
		return findProductpublisher;
	}
	
	// 도서 타입으로 찾기
	public Product selectByTYPE(String type_no) throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(ProductSQL.PRODUCT_BY_TYPE);
		pstmt.setString(1, type_no);
		ResultSet rs = pstmt.executeQuery();
		Product findProducttype = null;
		if(rs.next()) {
			findProducttype = new Product(rs.getInt("p_no"),
										rs.getString("p_name"),
										rs.getString("p_author"),
										rs.getString("p_publisher"),
										rs.getString("p_publish_date")
										rs.getInt("p_price"),
										rs.getString("p_image"),
										rs.getString("p_detail"),
										new BookType(rs.getInt("type_no"),null)
										);
		}
		rs.close();
		con.close();
		pstmt.close();
		return findProducttype;
	}
	
	// 도서 번호로 찾기
	public Product selectByNO(String p_no) throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(ProductSQL.PRODUCT_BY_NO);
		pstmt.setString(1, p_no);
		ResultSet rs = pstmt.executeQuery();
		Product findProductNO = null;
		if(rs.next()) {
			findProductNO = new Product(rs.getInt("p_no"),
										rs.getString("p_name"),
										rs.getString("p_author"),
										rs.getString("p_publisher"),
										rs.getString("p_publish_date")
										rs.getInt("p_price"),
										rs.getString("p_image"),
										rs.getString("p_detail"),
										new BookType(rs.getInt("type_no"),null)
										);
		}
		rs.close();
		con.close();
		pstmt.close();
		return findProductNO;
	}
	
	// 도서 가격수정
	public int updatePrice(Product product)throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(ProductSQL.PRODUCT_UPDATE_PRICE);
		pstmt.setInt(1, product.getP_price());
		int rowCount = pstmt.executeUpdate();
		con.close();
		return rowCount;
	}
	
	// 도서추가
	public int InsertProduct(Product product) throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(ProductSQL.PRODUCT_INSERT);
		pstmt.setInt(1, product.getP_no());
		pstmt.setString(2, product.getP_name());
		pstmt.setString(3, product.getP_author());
		pstmt.setString(4, product.getP_publisher());
		pstmt.setString(5, product.getP_publish_date());
		pstmt.setInt(6, product.getP_price());
		pstmt.setString(7, product.getP_image());
		pstmt.setString(8, product.getP_detail());
		pstmt.setInt(9, product.getBookType().getType_no());
		int rowCount = pstmt.executeUpdate();
		return rowCount;
	}
	
	// 도서삭제
	public int deleteProduct(Product product)throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt= con.prepareStatement(ProductSQL.PRODUCT_DELETE);
		pstmt.setInt(1, product.getP_no());
		int rowCount = pstmt.executeUpdate();
		con.close();
		return rowCount;
	}
}
