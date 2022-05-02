package kostaforest.semiproject.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

public class FAQBoardDAO {
	private static FAQBoardDAO instance = new FAQBoardDAO();
	private DataSource  dataSource;
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
}