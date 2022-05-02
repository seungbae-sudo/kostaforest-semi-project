package kostaforest.semiproject.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;



public class CategoryDAO {
	private static CategoryDAO instance = new CategoryDAO();
	private DataSource  dataSource;
	private CategoryDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}
	public static CategoryDAO getInstance() {
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
	
	public ArrayList<CategoryVO> list() throws SQLException{
		ArrayList<CategoryVO> list = new ArrayList<CategoryVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			String sql = "SELECT car_no,car_name FROM category";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CategoryVO cvo = new CategoryVO(rs.getInt(1), rs.getString(2));
				list.add(cvo);
			}
		}finally {
			closeAll(rs, pstmt, con);
			
		}
		
		return list;
		
	}
}