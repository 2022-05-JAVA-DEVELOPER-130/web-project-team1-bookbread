package com.itwill.bookbread.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.itwill.bookbread.dto.ReviewBoard;
import com.itwill.bookbread.sql.ReviewBoardSQL;

public class ReviewBoardDao {
	private DataSource dataSource;
	public ReviewBoardDao() throws Exception{
		BasicDataSource basicDataSource=new BasicDataSource();
		
		Properties properties=new Properties();
		properties.load(ReviewBoardDao.class.getResourceAsStream("jdbc.properties"));
		basicDataSource.setDriverClassName(properties.getProperty("driverClassName"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("username"));
		basicDataSource.setPassword(properties.getProperty("password"));
		this.dataSource=basicDataSource;
	}
	
	/*
	 * 새로운 리뷰생성
	 */
	
	public int create(ReviewBoard reviewBoard) throws Exception{
		Connection con=null;
		PreparedStatement pstmt=null;
		int insertRowCount=0;
		try {
			con=dataSource.getConnection();
			pstmt=con.prepareStatement(ReviewBoardSQL.REVIEW_INSERT);
			/*
			 	R_TITLE	VARCHAR2(200 BYTE)
				R_CONTENT	VARCHAR2(1000 BYTE)
				R_COUNT	NUMBER(20,0)
				USERID	VARCHAR2(100 BYTE)
				P_NO	NUMBER(10,0)
			 */
			pstmt.setString(1, reviewBoard.getR_title());
			pstmt.setString(1, reviewBoard.getR_content());
			pstmt.setInt(1, reviewBoard.getR_count());
			pstmt.setString(1, reviewBoard.getMember().getUserId());
			pstmt.setInt(1, reviewBoard.getProduct().getP_no());
		} finally {
			insertRowCount=pstmt.executeUpdate();
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}
		return insertRowCount;
	}
	
	/*
	 * 리뷰수정
	 */
	
	public int update(ReviewBoard reviewBoard) throws Exception{
		Connection con=null;
		PreparedStatement pstmt=null;
		int updateRowCount=0;
		try {
			con=dataSource.getConnection();
			pstmt=con.prepareStatement(ReviewBoardSQL.REVIEW_UPDATE);
			pstmt.setString(1,reviewBoard.getR_title());
			pstmt.setString(2, reviewBoard.getR_content());
			pstmt.setInt(3, reviewBoard.getR_no());
		} finally {
			updateRowCount=pstmt.executeUpdate();
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}
		return updateRowCount;
	}
	/*
	 * 리뷰삭제
	 */
	public int remove(String userId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int removeRowCount = 0;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(ReviewBoardSQL.REVIEW_DELETE);
			pstmt.setString(1, userId);
			removeRowCount = pstmt.executeUpdate();

		} finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();

		}
		return removeRowCount;
	}
	/*
	 * userId가쓴 리뷰 보기
	 */
	public ReviewBoard findReview(String userId) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ReviewBoard findReview=null;
		try {
			con = dataSource.getConnection();
			pstmt=con.prepareStatement(ReviewBoardSQL.REVIEW_SELECET_BY_ID);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				findReview = new ReviewBoard(rs.getInt("r_no"),
											 rs.getDate("r_date"),
											 rs.getString("r_title"),
											 rs.getString("r_content"),
											 rs.getInt("r_count"),
											 null,
											 null);
			}
					
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return findReview;
	}
	/*
	 * 전체리뷰보기
	 */
	public ArrayList<ReviewBoard> findReviewList() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ReviewBoard> findReviewList = new ArrayList<ReviewBoard>();
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(ReviewBoardSQL.REVIEW_SELECT_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				findReviewList.add(new ReviewBoard(rs.getInt("r_no"),
											       rs.getDate("r_date"),
											       rs.getString("r_title"),
											       rs.getString("r_content"),
											       rs.getInt("r_count"),
											       null,
											       null));
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return findReviewList;
	}
	
	
	
	
	
	
	
}//끝
