package kostaforest.semiproject.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class CommunityBoardDAO {
	private static CommunityBoardDAO instance = new CommunityBoardDAO();
	private DataSource  dataSource;
	private CommunityBoardDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}
	public static CommunityBoardDAO getInstance() {
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
	
	public void posting(CommunityPostVO cvo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con= dataSource.getConnection();
			StringBuilder sql = new StringBuilder("INSERT INTO CMU_BOARD(board_no,title,car_no,content,time_posted,id) ");					
			sql.append("values(cmu_board_seq.nextval,?,?,?,sysdate,'samsung')");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,cvo.getTitle());
			pstmt.setInt(2, cvo.getCvo().getCarNo());
			pstmt.setString(3, cvo.getContent());
			pstmt.executeUpdate();
			
		}finally {
			closeAll(pstmt, con);
		}
	}
	public ArrayList<CommunityPostVO> findAllPostList(String carNo) throws SQLException{
		ArrayList<CommunityPostVO> list = new ArrayList<CommunityPostVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		try {
			con = dataSource.getConnection();
			String sql = "SELECT board_no, title,like_no,hits FROM CMU_BOARD WHERE car_no= ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, carNo);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CommunityPostVO cvo = new CommunityPostVO();
				cvo.setBoardNo(rs.getInt("board_no"));
				cvo.setTitle(rs.getString("title"));
				cvo.setLikeNo(rs.getInt("like_no"));
				cvo.setHits(rs.getInt("hits"));
				list.add(cvo);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	public CommunityPostVO findPostByNo(String no) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		CommunityPostVO cvo = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("SELECT c.title, c.content, c.hits, c.time_posted, m.com_name ");
			sql.append("FROM CMU_BOARD c , EMP_MEMBER m ");
			sql.append("WHERE c.id = m.id AND c.board_no = ?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				MemberVO mvo = new MemberVO();
				mvo.setComName(rs.getString("com_name"));
				cvo = new CommunityPostVO();
				cvo.setTitle(rs.getString("title"));
				cvo.setContent(rs.getString("content"));
				cvo.setHits(rs.getInt("hits"));
				cvo.setTimePosted(rs.getString("time_posted"));
				cvo.setMvo(mvo);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		
		return cvo;
	}
}



