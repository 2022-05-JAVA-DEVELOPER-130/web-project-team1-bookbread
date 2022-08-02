package com.itwill.bookbread.test;

import com.itwill.bookbread.dao.MemberDao;

public class MemberServiceTestMain {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		MemberDao memberDao = new MemberDao();
		System.out.println(memberDao.select_By_No(1));
	}

}
