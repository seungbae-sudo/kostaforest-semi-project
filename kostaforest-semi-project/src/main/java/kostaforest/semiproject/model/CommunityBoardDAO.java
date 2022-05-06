package kostaforest.semiproject.model;

import java.sql.Connection;
import java.sql.Date;
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
			sql.append("values(cmu_board_seq.nextval,?,?,?,sysdate,?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,cvo.getTitle());
			pstmt.setInt(2, cvo.getCvo().getCarNo());
			pstmt.setString(3, cvo.getContent());
			pstmt.setString(4, cvo.getMvo().getId());
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
			String sql = "SELECT board_no, title,like_no,hits FROM CMU_BOARD WHERE car_no= ? ORDER by board_no DESC";
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
			StringBuilder sql = new StringBuilder("SELECT c.title, c.content,c.like_no, c.hits, c.time_posted, m.com_name,m.id ");
			sql.append("FROM CMU_BOARD c , EMP_MEMBER m ");
			sql.append("WHERE c.id = m.id AND c.board_no = ?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				MemberVO mvo = new MemberVO();
				mvo.setComName(rs.getString("com_name"));
				mvo.setId(rs.getString("id"));
				cvo = new CommunityPostVO();
				cvo.setBoardNo(Integer.parseInt(no));
				cvo.setTitle(rs.getString("title"));
				cvo.setContent(rs.getString("content"));
				cvo.setHits(rs.getInt("hits"));
				cvo.setLikeNo(rs.getInt("like_no"));
				cvo.setTimePosted(rs.getString("time_posted"));
				cvo.setMvo(mvo);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		
		return cvo;
	}
	
	public void deletePostByNo(String no) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql ="DELETE FROM CMU_BOARD WHERE board_no = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
		
	}
	
	public void updatePostByNo(CommunityPostVO cvo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "UPDATE CMU_BOARD SET title=?,content=?, car_no=? WHERE board_no = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cvo.getTitle());
			pstmt.setString(2, cvo.getContent());
			pstmt.setInt(3, cvo.getCvo().getCarNo());
			pstmt.setInt(4, cvo.getBoardNo());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	//INSERT INTO BOARD_COMMENT(comment_no, comment_content, time_posted,id,board_no)
    //VALUES(board_comment_seq.nextval,'좋아요~!',sysdate,'samsung','7')
	public void comment(CommentVO covo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("INSERT INTO BOARD_COMMENT(comment_no, comment_content, time_posted,id,board_no) ");
			sql.append("VALUES(board_comment_seq.nextval,?,sysdate,?,?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, covo.getCommentContent());
			pstmt.setString(2, covo.getMvo().getId());
			pstmt.setInt(3, covo.getCmuvo().getBoardNo());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	
	public ArrayList<CommentVO> findByBoardNoAllCommentList(String boardNo) throws SQLException{
		ArrayList<CommentVO> list = new ArrayList<CommentVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("SELECT co.comment_no,co.comment_content, co.time_posted,co.id ");
			sql.append("FROM BOARD_COMMENT co , CMU_BOARD cmu ");
			sql.append("WHERE co.board_no = cmu.board_no AND co.board_no = ?");
			pstmt= con.prepareStatement(sql.toString());
			pstmt.setString(1, boardNo);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CommentVO covo = new CommentVO();
				MemberVO mvo = new MemberVO();
				mvo.setId(rs.getString("id"));
				covo.setcommentNO(Integer.parseInt(rs.getString("comment_no")));
				covo.setMvo(mvo);
				covo.setCommentContent(rs.getString("comment_content"));
				covo.setTimePosted(rs.getString("time_posted"));
				list.add(covo);
			}
			
		}finally {
			closeAll(rs, pstmt, con);
		}
		
		
		return list;
		
	}
	
	public void likeUpdate(String no) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "UPDATE CMU_BOARD SET like_no = like_no+1 WHERE board_no = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.executeUpdate();
			
		}finally {
			closeAll(pstmt, con);
		}
	}
	
	public void hitsUpdate(String no) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "UPDATE CMU_BOARD SET hits = hits+1 WHERE board_no = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.executeUpdate();
			
		}finally {
			closeAll(pstmt, con);
		}
	}
	
	public void deleteByBoardNoComment(String no) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("DELETE FROM BOARD_COMMENT ");
			sql.append("WHERE comment_no IN ( ");
			sql.append("SELECT comment_no ");
			sql.append("FROM BOARD_COMMENT ");
			sql.append("WHERE board_no = ?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, no);
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	
	public ArrayList<CommunityPostVO> findAllListByCategoryNo(String no) throws SQLException{
		ArrayList<CommunityPostVO> list = new ArrayList<CommunityPostVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("SELECT board_no, title , content, hits, like_no ");
			sql.append("FROM CMU_BOARD ");
			sql.append("WHERE car_no = ? ");
			sql.append("AND ROWNUM <= 4 ");
			sql.append("ORDER BY board_no DESC");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, no);
			rs= pstmt.executeQuery();
			while(rs.next()) {
				CommunityPostVO cmuvo = new CommunityPostVO();
				cmuvo.setBoardNo(rs.getInt("board_no"));
				cmuvo.setTitle(rs.getString("title"));
				cmuvo.setContent(rs.getString("content"));
				cmuvo.setHits(rs.getInt("hits"));
				cmuvo.setLikeNo(rs.getInt("like_no"));
				list.add(cmuvo);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	
	public ArrayList<CommunityPostVO> findAllListByTitle(String title) throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<CommunityPostVO> list = new ArrayList<CommunityPostVO>();
		try {
			con = dataSource.getConnection();
			String sql = "SELECT * FROM CMU_BOARD WHERE title LIKE ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+title+"%");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CommunityPostVO cmuvo = new  CommunityPostVO();
				CategoryVO cavo = new CategoryVO();
				MemberVO mvo = new MemberVO();
				mvo.setId(rs.getString("id"));
				cavo.setCarNo(Integer.parseInt(rs.getString("car_no")));
				cmuvo.setBoardNo(Integer.parseInt(rs.getString("board_no")));
				cmuvo.setTitle(rs.getString("title"));
				cmuvo.setTimePosted(rs.getString("time_posted"));
				cmuvo.setLikeNo(Integer.parseInt(rs.getString("like_no")));
				cmuvo.setHits(Integer.parseInt(rs.getString("hits")));
				cmuvo.setCvo(cavo);
				cmuvo.setMvo(mvo);
				list.add(cmuvo);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		
		return list;
	}
	
	public void deleteCommentByCommentNo(String commentNo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "DELETE FROM BOARD_COMMENT WHERE comment_no = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, commentNo);
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
			
		}
	}
}



