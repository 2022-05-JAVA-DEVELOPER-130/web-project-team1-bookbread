package com.itwill.bookbread.service;

import com.itwill.bookbread.dao.MemberDao;
import com.itwill.bookbread.dto.Member;
import com.itwill.bookbread.user.exception.ExistedUserException;
import com.itwill.bookbread.user.exception.UserNotFoundException;

public class MemberService {
	private MemberDao memberDao;
	
	public MemberService() throws Exception {
		memberDao = new MemberDao();
	}
	//회원가입
	public int create(Member member) throws Exception{
		if(memberDao.existedUser(member.getUserId())) {
			throw new ExistedUserException(member.getUserId()+"는 이미 존재하는 아이디 입니다");
		}
		return memberDao.create(member);
	}
	
	//로그인
	public Member login(String userId,String password) throws Exception {
		Member member = memberDao.findMember(userId);
		if(member == null) {
			throw new UserNotFoundException(userId + "는 존재하지 않는 아이디입니다.");
		}
		if(member.isMatchPassword(password)) {
			throw new UserNotFoundException("패쓰워드가 일치합니다");
		}
		return member;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
