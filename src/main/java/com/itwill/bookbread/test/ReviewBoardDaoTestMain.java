package com.itwill.bookbread.test;



import java.util.Date;

import com.itwill.bookbread.dao.ReviewBoardDao;
import com.itwill.bookbread.dto.BookType;
import com.itwill.bookbread.dto.Member;
import com.itwill.bookbread.dto.Product;
import com.itwill.bookbread.dto.ReviewBoard;


public class ReviewBoardDaoTestMain {

	public static void main(String[] args) throws Exception {
		ReviewBoardDao reviewBoardDao=new ReviewBoardDao();

	    //System.out.println(reviewBoardDao.findReviewList());
		//System.out.println(reviewBoardDao.findReviewListByPno(1));
		//System.out.println(reviewBoardDao.findReview("jiwon"));
		//System.out.println(reviewBoardDao.remove("jiwon"));
		//System.out.println(reviewBoardDao.update(new ReviewBoard(1,null,"책3","3",0,new Member("jiwon","","","","","","",""),new Product(3,"","","","",0,"","",new BookType(0,"")))));
		//System.out.println(reviewBoardDao.create(new ReviewBoard(0,null,"책4","4",0,new Member("jiwon","","","","","","",""),new Product(4,"","","","",0,"","",new BookType(0,"")))));
		//System.out.println(reviewBoardDao.countUpdate(3));
		//System.out.println(reviewBoardDao.removeByNo(2));
	}

}
