package test;

import java.sql.SQLException;

import kostaforest.semiproject.model.EmploymentBoardDAO;
import kostaforest.semiproject.model.MemberDAO;
import kostaforest.semiproject.model.MemberVO;
import kostaforest.semiproject.model.Pagination;

public class UnitTest {

	public static void main(String[] args) {
		EmploymentBoardDAO dao = EmploymentBoardDAO.getInstance();
		MemberDAO mdao = MemberDAO.getInstance();
		/*
		Pagination p=new Pagination(48,9);
//		System.out.println(p.getStartRowNumber());
//		System.out.println(p.getEndRowNumber());
		System.out.println("totalPage "+p.getTotalPage());
		System.out.println("totalPageGroup "+p.getTotalPageGroup());
		System.out.println("nowPageGroup "+p.getNowPageGroup());
		System.out.println("startPageOfPageGroup "+p.getStartPageOfPageGroup());
		System.out.println("endPageOfPageGroup "+p.getEndPageOfPageGroup());
		System.out.println("isPreviousPageGroup "+p.isPreviousPageGroup());
		System.out.println("isNextPageGroup "+p.isNextPageGroup());
		*/
		try {
			// 게시물 리스트

//			ArrayList<EmploymentPostVO> list= dao.findPostList();
//			for(EmploymentPostVO vo:list) {
//				System.out.println(vo);
//				}
//			System.out.println(list);

			// 게시글쓰기
//			EmploymentPostVO empPostVO=new EmploymentPostVO();
//			empPostVO.setTitle("삼성전자 모집");
//			empPostVO.setContent("삼성전자에서 경력직을 모집합니다");
//			dao.posting(empPostVO);
//			System.out.println("글쓰기 완료");

			// 테스트에서는 안되지만 table에 잘 들어감;;;

			// 수정
			/*System.out.println(dao.findPostByNo("10"));
			EmploymentPostVO empPostVO = new EmploymentPostVO();
			empPostVO.setBoardNo(10);
			empPostVO.setTitle("왜");
			empPostVO.setContent("수정이");
			empPostVO.setEmpGroup("계약직");
			dao.updatePost(empPostVO);
			System.out.println(dao.findPostByNo("10"));
//			*/
			/* System.out.println(dao.findPostByNo("1")); */
			//회원가입 
			
//			MemberVO mvo = new MemberVO();
//			mvo.setId("daum");
//			mvo.setPassword("a");
//			mvo.setComName("카카오");
//			mvo.setMemberGroup("기업");
//			mdao.register(mvo);
//			System.out.println(mvo);
			System.out.println(dao.findPostList(new Pagination(10,2)));
			

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

}
