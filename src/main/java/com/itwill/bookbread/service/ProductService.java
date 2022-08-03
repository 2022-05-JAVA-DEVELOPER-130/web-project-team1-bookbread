package com.itwill.bookbread.service;

import java.util.List;

import com.itwill.bookbread.dao.ProductDao;
import com.itwill.bookbread.dto.Product;

public class ProductService {

	private ProductDao productdao;
	
	public ProductService() throws Exception {
		
		productdao = new ProductDao();
		
	}
	
	// 전체 도서 리스트
	public List<Product> selectAll() throws Exception{
		return productdao.selectAll();
	}
	
	// 도서이름으로 리스트찾기
	public List<Product> selectListName(String p_name) throws Exception {
		return productdao.selectListName(p_name);
	}
	
	// 저자이름으로 리스트찾기
	public List<Product> selectListAuthor(String p_author)throws Exception {
		return productdao.selectListAuthor(p_author);
	}
	
	// 출판사이름으로 리스트찾기
	public List<Product> selectListPublisher(String p_publisher)throws Exception {
		return productdao.selectListPublisher(p_publisher);
	}
	
	// 도서타입으로 리스트찾기
	public List<Product> selectListType(String type_no)throws Exception {
		return productdao.selectListType(type_no);
	}
	
	
	
	
}
