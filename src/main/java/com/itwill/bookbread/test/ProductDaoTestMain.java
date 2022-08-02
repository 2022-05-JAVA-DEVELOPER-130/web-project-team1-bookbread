package com.itwill.bookbread.test;

import java.util.List;

import com.itwill.bookbread.dao.ProductDao;
import com.itwill.bookbread.dto.Product;
import com.itwill.bookbread.dto.BookType;

public class ProductDaoTestMain {

	public static void main(String[] args) throws Exception {
		
		ProductDao productDao = new ProductDao();
		
		System.out.println("전체 도서 리스트");
		List<Product> productlist = productDao.selectAll();
		System.out.println(productlist);
	}

}
