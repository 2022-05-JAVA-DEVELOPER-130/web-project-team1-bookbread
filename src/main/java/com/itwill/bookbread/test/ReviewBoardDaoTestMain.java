package com.itwill.bookbread.test;



import com.itwill.bookbread.dao.ReviewBoardDao;


public class ReviewBoardDaoTestMain {

	public static void main(String[] args) throws Exception {
		ReviewBoardDao reviewBoardDao=new ReviewBoardDao();
	    //System.out.println(reviewBoardDao.findReviewList());
		System.out.println(reviewBoardDao.findReview("jiwon"));

	}

}
