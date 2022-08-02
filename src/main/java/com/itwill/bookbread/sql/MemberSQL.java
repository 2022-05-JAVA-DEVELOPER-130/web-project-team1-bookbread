package com.itwill.bookbread.sql;

public class MemberSQL {
	//update_pk(회원정보수정)
	public final static String MEMBER_UPDATE=
			"update member set name=?,phone=?,birth=?,address=?,email=?,interest=? where userId=?";

	//delete_pk(회원탈퇴)
    public final static String MEMBER_DELETE=
    		"delete from member where userId=?";

	//insert(회원가입)
	public final static String MEMBER_INSERT=
			"insert into member values (?,?,?,?,?,?,?,?)";

	//select_pk(내정보보기)
	public final static String MEMBER_SELECT_BY_ID=
			"select userId,password,name,phone,birth,address,email,interest from member where userId=?"; 

	//select_all(회원들정보보기)
	public final static String MEMBER_SELECT_ALL=
			"select * from member";
	

	//(아이디 찾기)
	public final static String FIND_MEMBER_ID=
			"select * from member where name=? and phone=?";

	//(비밀번호 찾기)
	public final static String FIND_MEMBER_PASSWORD=
			"select * from member where name=? and userId=?";

}
