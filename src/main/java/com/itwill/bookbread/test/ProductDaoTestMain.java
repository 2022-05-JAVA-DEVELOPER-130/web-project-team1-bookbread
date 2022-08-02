package com.itwill.bookbread.test;

import java.util.List;

import com.itwill.bookbread.dao.ProductDao;
import com.itwill.bookbread.dto.Product;

public class ProductDaoTestMain {

	public static void main(String[] args) throws Exception {

		ProductDao productDao = new ProductDao();
		
		// Test_A) 전체도서리스트 출력
		System.out.println(productDao.selectAll());
		
		// Test_B) 도서 이름으로 찾기
		//System.out.println(productDao.selectByName("불편한 편의점"));
		
		// Test_B) 출판사 이름으로 찾기
		//System.out.println(productDao.selectBypublisher("팩토리나인"));
	}

}
