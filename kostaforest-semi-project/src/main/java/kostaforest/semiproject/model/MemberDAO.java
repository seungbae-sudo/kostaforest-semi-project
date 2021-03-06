package kostaforest.semiproject.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	private DataSource dataSource;

	private MemberDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}

	public static MemberDAO getInstance() {
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

	public MemberVO login(String id, String password) throws SQLException {
		MemberVO vo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			String sql = "SELECT  *  FROM EMP_MEMBER WHERE id=? AND password=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new MemberVO(id, password, rs.getString("com_name"), rs.getString("member_group"),
						rs.getString("reg_date"));
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return vo;
	}

	public void register(MemberVO mvo) throws SQLException {

		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "INSERT INTO EMP_MEMBER(id,password,com_name,member_group,reg_date) values(?,?,?,?,sysdate)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mvo.getId());
			pstmt.setString(2, mvo.getPassword());
			pstmt.setString(3, mvo.getComName());
			pstmt.setString(4, mvo.getMemberGroup());
			pstmt.executeUpdate();
		}

		finally {
			closeAll(pstmt, con);
		}

	}

	public void registerUpdate(MemberVO mvo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "UPDATE EMP_MEMBER SET password = ?, com_name=? WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mvo.getPassword());
			pstmt.setString(2, mvo.getComName());
			pstmt.setString(3, mvo.getId());

			pstmt.executeUpdate();
		}

		finally {
			closeAll(pstmt, con);
		}
	}

	public boolean idcheck(String id) throws SQLException {
		boolean flag = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			String sql = "select count(*) from emp_member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next() && (rs.getInt(1) > 0))
				flag = true;
		} finally {
			closeAll(rs, pstmt, con);
		}
		return flag;
	}
}
