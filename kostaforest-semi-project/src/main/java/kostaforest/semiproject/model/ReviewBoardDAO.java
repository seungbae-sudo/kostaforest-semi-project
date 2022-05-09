package kostaforest.semiproject.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;


public class ReviewBoardDAO {
	private static ReviewBoardDAO instance = new ReviewBoardDAO();
	private DataSource  dataSource;
	private ReviewBoardDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}
	public static ReviewBoardDAO getInstance() {
		return instance;
	}
	
	public void closeAll(PreparedStatement pstmt, Connection con) throws SQLException {
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();
	}

	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException {
		if (rs != null)
			rs.close();
		closeAll(pstmt, con);
	}
	
	public void posting(ReviewPostVO rvo)throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con= dataSource.getConnection();
			String sql="INSERT INTO REVIEW(re_no,title,rating, content,time_posted,id) VALUES(review_seq.nextval,?,?,?,sysdate,? ) " ;
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,rvo.getTitle());
			pstmt.setFloat(2, rvo.getRating());
			pstmt.setString(3, rvo.getContent());
			pstmt.setString(4, rvo.getMvo().getId());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	
	public ArrayList<ReviewPostVO> findPostList() throws SQLException{
		ArrayList<ReviewPostVO> list=new ArrayList<ReviewPostVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql=new StringBuilder("SELECT r.re_no, m.com_name, r.title, r.hits, r.time_posted ");
			sql.append("FROM REVIEW r, EMP_MEMBER m ");
			sql.append("WHERE  r.id=m.id ");
			sql.append("ORDER BY r.re_no DESC");			
			pstmt = con.prepareStatement(sql.toString());
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemberVO mvo = new MemberVO();
				mvo.setComName(rs.getString("com_name"));
				ReviewPostVO rvo=new ReviewPostVO();
				rvo.setReNo(rs.getInt("re_no"));
				rvo.setTitle(rs.getString("title"));
				rvo.setHits(rs.getInt("hits"));
				rvo.setTimePosted(rs.getString("time_posted"));
				list.add(rvo);
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	
	public ReviewPostVO findPostByNo(String no) throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		ReviewPostVO rvo=null;
		try {
			con=dataSource.getConnection();
			StringBuilder sql=new StringBuilder();
			sql.append("SELECT r.re_no, r.title, r.rating, r.content, r.hits, r.time_posted, m.com_name,m.id ");
			sql.append("FROM REVIEW r, EMP_MEMBER m ");
			sql.append("WHERE r.id=m.id AND r.re_no=? ");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1,no);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				MemberVO mvo=new MemberVO();
				mvo.setComName(rs.getString("com_name"));
				mvo.setId(rs.getString("id"));
				rvo=new ReviewPostVO();
				rvo.setReNo(rs.getInt("re_no"));
				rvo.setTitle(rs.getString("title"));
				rvo.setRating(rs.getInt("rating"));
				rvo.setContent(rs.getString("content"));
				rvo.setHits(rs.getInt("hits"));
				rvo.setTimePosted(rs.getString("time_posted"));
				rvo.setMvo(mvo);
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return rvo;
	}
	public void updateHits(String no) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			con=dataSource.getConnection();
			String sql="UPDATE REVIEW SET hits=hits+1 WHERE re_no=? ";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	public void deletePostByNo(String no)throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			con=dataSource.getConnection();
			String sql="DELETE FROM REVIEW WHERE re_no=? ";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	public void updatePost(ReviewPostVO rvo) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			con=dataSource.getConnection();
			String sql="UPDATE REVIEW SET title=?, rating=? ,content=? WHERE re_no=? ";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, rvo.getTitle());
			pstmt.setFloat(2, rvo.getRating());
			pstmt.setString(3, rvo.getContent());
			pstmt.setInt(4, rvo.getReNo());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	
	public ArrayList<RatingVO> findRatingByNo() throws SQLException{
		ArrayList<RatingVO> list=new ArrayList<RatingVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		try {
			con=dataSource.getConnection();
			StringBuilder sql=new StringBuilder();
			sql.append("select com_name, round(avg(rating),2) ");
			sql.append(" from( ");
			sql.append(" select e.com_name ,r.rating ");
			sql.append(" from EMP_MEMBER e, REVIEW r ");
			sql.append(" where e.id=r.id ");
			sql.append(" )GROUP BY com_name ");
			sql.append(" order by avg(rating) desc ");
			pstmt = con.prepareStatement(sql.toString());
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemberVO mvo = new MemberVO();
				mvo.setComName(rs.getString("com_name"));
				RatingVO rtvo=new RatingVO();
				rtvo.setMvo(mvo);
				rtvo.setRating(rs.getFloat("round(avg(rating),2)"));
				list.add(rtvo);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
		
	}
}