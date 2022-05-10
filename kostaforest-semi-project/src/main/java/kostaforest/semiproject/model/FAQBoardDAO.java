package kostaforest.semiproject.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class FAQBoardDAO {
	private static FAQBoardDAO instance = new FAQBoardDAO();
	private DataSource dataSource;
	private FAQBoardDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}
	public static FAQBoardDAO getInstance() {
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
	public ArrayList<FAQPostVO> faqList() throws SQLException {
		ArrayList<FAQPostVO> list = new ArrayList<FAQPostVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			String sql = "SELECT * FROM FAQ";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				FAQPostVO fvo = new FAQPostVO();
				fvo.setFaqNo(rs.getInt("faq_no"));
				fvo.setAsk(rs.getString("ask"));
				fvo.setAnswer(rs.getString("answer"));
				list.add(fvo);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
}