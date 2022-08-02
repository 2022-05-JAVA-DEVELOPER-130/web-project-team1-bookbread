package com.itwill.bookbread.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import org.apache.jasper.tagplugins.jstl.core.Remove;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.apache.tomcat.jdbc.pool.DataSource;

import com.itwill.bookbread.dto.Member;
import com.itwill.bookbread.sql.MemberSQL;

/*
USERID	VARCHAR2(100 BYTE)	No		1	
PASSWORD	VARCHAR2(100 BYTE)	Yes		2	
NAME	VARCHAR2(100 BYTE)	Yes		3	
PHONE	VARCHAR2(100 BYTE)	Yes		4	
BIRTH	VARCHAR2(100 BYTE)	Yes		5	
ADDRESS	VARCHAR2(100 BYTE)	Yes		6	
EMAIL	VARCHAR2(100 BYTE)	Yes		7	
INTEREST	VARCHAR2(200 BYTE)	Yes		8	
 */
public class MemberDao {
	private BasicDataSource dataSource;
	//데이타소스 연결
	public MemberDao()throws Exception {
		Properties properties = new Properties();
		properties.load(this.getClass().getResourceAsStream("/com/itwill/bookbread/common/jdbc.properties"));
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(properties.getProperty("driverClass"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("user"));
		basicDataSource.setPassword(properties.getProperty("password"));
		dataSource = basicDataSource;
	}
	//회원가입
	public int create(Member member) throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(MemberSQL.MEMBER_INSERT);
		pstmt.setString(1,member.getUserId());
		pstmt.setString(2,member.getPassword());
		pstmt.setString(3,member.getName());
		pstmt.setString(4,member.getPhone());
		pstmt.setString(5,member.getBirth());
		pstmt.setString(6,member.getAddress());
		pstmt.setString(7,member.getEmail());
		pstmt.setString(8,member.getInterest());
		int insertRowCount = pstmt.executeUpdate();
		pstmt.close();
		con.close();
		return insertRowCount;
	}
	//정보수정
	public int update(Member member)throws Exception{
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(MemberSQL.MEMBER_UPDATE);
		pstmt.setString(1, member.getName());
		pstmt.setString(2, member.getPhone());
		pstmt.setString(3, member.getBirth());
		pstmt.setString(4, member.getAddress());
		pstmt.setString(5, member.getEmail());
		pstmt.setString(6, member.getInterest());
		pstmt.setString(7, member.getUserId());
		int updateRowCount = pstmt.executeUpdate();
		pstmt.close();
		con.close();
		return updateRowCount;
	}
	//회원탈퇴
	public int delete(String userId) throws Exception{
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(MemberSQL.MEMBER_DELETE);
		pstmt.setString(1, userId);
		int removeRowCount = pstmt.executeUpdate();
		pstmt.close();
		con.close();
		return removeRowCount;
	}
	//내 정보 보기
	public Member findMember(String userId) throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(MemberSQL.MEMBER_SELECT_BY_ID);
		Member findMember = null;
		pstmt.setString(1, userId);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			findMember = new Member(rs.getString("userId"),
									rs.getString("password"),
									rs.getString("name"),
									rs.getString("phone"),
									rs.getString("birth"),
									rs.getString("address"),
									rs.getString("email"),
									rs.getString("interest"));
		}
		rs.close();
		pstmt.close();
		con.close();
		return findMember; 
	}
	
	//회원들 정보 보기
	public ArrayList<Member> findMemeber() throws Exception{
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(MemberSQL.MEMBER_SELECT_ALL);
		ResultSet rs = pstmt.executeQuery();
		ArrayList<Member> findMemberList = new  ArrayList<Member>();
		while (rs.next()) {
			findMemberList.add(new Member(rs.getString("userId"),
										  rs.getString("password"),
										  rs.getString("name"),
										  rs.getString("phone"),
										  rs.getString("birth"),
										  rs.getString("address"),
										  rs.getString("email"),
										  rs.getString("interest")));
						}
		rs.close();
		pstmt.close();
		con.close();
		return findMemberList;
	}
	//아이디 찾기
	public Member findId(String name, String phone)throws Exception {
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(MemberSQL.FIND_MEMBER_ID);
		Member findId = null;
		pstmt.setString(1, name);
		pstmt.setString(2, phone);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			findId = new Member(rs.getString("userId"),
							    rs.getString("password"),
							    rs.getString("name"),
							    rs.getString("phone"),
							    rs.getString("birth"),
							    rs.getString("address"),
							  	rs.getString("email"),
							  	rs.getString("interest"));
		}
		con.close();
		pstmt.close();
		rs.close();
		return findId;
	}
	//비밀번호 찾기
	public Member findPassword(String userId,String email)throws Exception{
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(MemberSQL.FIND_MEMBER_PASSWORD);
		Member findPassword = null;
		pstmt.setString(1, userId);
		pstmt.setString(2, email);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			findPassword = new Member(rs.getString("userId"),
									  rs.getString("password"),
									  rs.getString("name"),
									  rs.getString("phone"),
									  rs.getString("birth"),
									  rs.getString("address"),
									  rs.getString("email"),
									  rs.getString("interest"));
		}
		rs.close();
		pstmt.close();
		con.close();
		return findPassword;
	}
	
}
	
	
	

