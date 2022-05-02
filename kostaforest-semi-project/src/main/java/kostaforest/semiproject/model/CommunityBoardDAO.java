package kostaforest.semiproject.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
			sql.append("values(cmu_board_seq.nextval,?,1,?,sysdate,'samsung')");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,cvo.getTitle());
			pstmt.setString(2, cvo.getContent());
			pstmt.executeUpdate();
			
		}finally {
			closeAll(pstmt, con);
		}
	}
}