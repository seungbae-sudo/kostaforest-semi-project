package kostaforest.semiproject.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class EmploymentBoardDAO {
	private static EmploymentBoardDAO instance = new EmploymentBoardDAO();
	private DataSource dataSource;

	private EmploymentBoardDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}

	public static EmploymentBoardDAO getInstance() {
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

	// 리스트 보여주기
	public ArrayList<EmploymentPostVO> findPostList() throws SQLException {
		ArrayList<EmploymentPostVO> list = new ArrayList<EmploymentPostVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = dataSource.getConnection();

			StringBuilder sql = new StringBuilder(" SELECT emp_no, title, hits ,emp_group ");
			sql.append("FROM EMPLOYMENT ");
			sql.append("ORDER BY emp_no DESC");
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				EmploymentPostVO empPostVO = new EmploymentPostVO();
				empPostVO.setBoardNo(rs.getInt("emp_no"));
				empPostVO.setTitle(rs.getString("title"));
				empPostVO.setHits(rs.getInt("hits"));
				empPostVO.setEmpGroup(rs.getString("emp_group"));
				list.add(empPostVO);
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}

	// 찾기
	public EmploymentPostVO findPostByNo(String no) throws SQLException {
		EmploymentPostVO empPostVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append(
					"SELECT e.emp_no,e.title,e.emp_group, e.content, e.hits,to_char(e.time_posted,'YYYY.MM.DD') as time_posted, m.com_name ,m.id");
			sql.append(" FROM EMPLOYMENT e , EMP_MEMBER m ");
			sql.append(" WHERE e.id = m.id AND e.emp_no=? ");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				MemberVO mvo = new MemberVO();
				mvo.setComName(rs.getString("com_name"));
				mvo.setId(rs.getString("id"));
				empPostVO = new EmploymentPostVO();
				empPostVO.setBoardNo(rs.getInt("emp_no"));
				empPostVO.setTitle(rs.getString("title"));
				empPostVO.setEmpGroup(rs.getString("emp_group"));
				empPostVO.setContent(rs.getString("content"));
				empPostVO.setHits(rs.getInt("hits"));
				empPostVO.setTimePosted(rs.getString("time_posted"));
				empPostVO.setMvo(mvo);

			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return empPostVO;
	}

//	글쓰기
	public void posting(EmploymentPostVO empPostVO) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder(
					"INSERT INTO EMPLOYMENT(emp_no,title,emp_group,content,time_posted,id) ");
			sql.append("values(employment_seq.nextval,?,?,?,sysdate,'samsung')");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, empPostVO.getTitle());
			pstmt.setString(2, empPostVO.getEmpGroup());
			pstmt.setString(3, empPostVO.getContent());
//			pstmt.setString(4, empPostVO.getMvo().getId());
			pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
	}

	// 글수정
	public void updatePost(EmploymentPostVO empPostVO) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "UPDATE EMPLOYMENT SET title=?,content=?,emp_group=? WHERE emp_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, empPostVO.getTitle());
			pstmt.setString(2, empPostVO.getContent());
			pstmt.setString(3, empPostVO.getEmpGroup());
			pstmt.setInt(4, empPostVO.getBoardNo());
			pstmt.executeUpdate();
			System.out.println(empPostVO + " 잘 나옴");
		} finally {
			closeAll(pstmt, con);
		}
	}

	// 글 삭제
	public void deletePostByNo(String no) throws SQLException {

		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "DELETE FROM EMPLOYMENT WHERE emp_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
	}

	// 조회수
	public void updateHits(String no) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "UPDATE EMPLOYMENT SET hits=hits+1 WHERE emp_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
	}
}