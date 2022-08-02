package com.itwill.bookbread.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		BasicDataSource basicDataSource = new BasicDataSource();
		Properties properties = new Properties();
		properties.load(this.getClass().getResourceAsStream("com.itwill.bookbread.common.jdbc.properties"));
		basicDataSource.setDriverClassName(properties.getProperty("driverClassName"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("username"));
		basicDataSource.setPassword(properties.getProperty("password"));
		this.dataSource = basicDataSource;
	}
	//회원가입
	public int create(Member member) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int insertRowCount = 0;
		try {
		con = dataSource.getConnection();
		pstmt = con.prepareStatement(MemberSQL.MEMBER_INSERT);
		pstmt.setString(1,member.getUserId());
		pstmt.setString(2,member.getPassword());
		pstmt.setString(3,member.getName());
		pstmt.setString(4,member.getPhone());
		pstmt.setString(5,member.getBirth());
		pstmt.setString(6,member.getAddress());
		pstmt.setString(7,member.getEmail());
		pstmt.setString(8,member.getInterest());
		insertRowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		pstmt.close();
		con.close();
		return insertRowCount;
	}
	//정보수정
	public int update(Member member)throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		int updateRowCount=0;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(MemberSQL.MEMBER_UPDATE);
			pstmt.setString(1, member.getName());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getBirth());
			pstmt.setString(4, member.getAddress());
			pstmt.setString(5, member.getEmail());
			pstmt.setString(6, member.getInterest());
			pstmt.setString(7, member.getUserId());
			updateRowCount = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		pstmt.close();
		con.close();
		return updateRowCount;
	}
	//회원탈퇴
	public int delete(String userId) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		int removeRowCount = 0;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(MemberSQL.MEMBER_DELETE);
			pstmt.setString(1, userId);
			removeRowCount = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		pstmt.close();
		con.close();
		return removeRowCount;
	}
	//내 정보 보기
	public int select_By_No(Member member) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(MemberSQL.MEMBER_SELECT_BY_ID);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				pstmt.setString(1, member.getUserId());
				pstmt.setString(2, member.getPassword());
				pstmt.setString(3, member.getName());
				pstmt.setString(4, member.getBirth());
				pstmt.setString(5, member.getAddress());
				pstmt.setString(6, member.getEmail());
				pstmt.setString(7, member.getInterest());
			rs.close();
		
			pstmt.close();
			con.close();
		
	}
	
	//회원들 정보 보기
	
	}
}
	
	
	
	
	
	
	
	
	
	
	
	

