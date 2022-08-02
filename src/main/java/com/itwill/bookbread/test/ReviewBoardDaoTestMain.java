package com.itwill.bookbread.test;

import java.util.Date;

import com.itwill.bookbread.dao.ReviewBoardDao;
import com.itwill.bookbread.dto.Member;
import com.itwill.bookbread.dto.Product;
import com.itwill.bookbread.dto.ReviewBoard;

public class ReviewBoardDaoTestMain {

	public static void main(String[] args) throws Exception {
		ReviewBoardDao reviewBoardDao=new ReviewBoardDao();
		//System.out.println(reviewBoardDao.create(new ReviewBoard(0,null,"책이름","책내용",1,new Member(),new Product())));
		
		System.out.println(reviewBoardDao.findReviewList());

	}

}
