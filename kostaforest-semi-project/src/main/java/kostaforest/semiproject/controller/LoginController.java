package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.MemberDAO;
import kostaforest.semiproject.model.MemberVO;

public class LoginController implements Controller {

		@Override
		public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			String id=request.getParameter("id");
			String password=request.getParameter("password");
			
			if(isEmpty(id)) {
				System.out.println("id가 입력되지 않았습니다.");
				return "login-fail.jsp";
			}
			
			if(isEmpty(password)) {
				System.out.println("password가 입력되지 않았습니다.");
				return "login-fail.jsp";
			}
			
			MemberVO member = null;
			try{
				// test code(오라클 연동실패시 연습코드)
				//member = checkMember(id, password);
				
				// real code
				member = MemberDAO.getInstance().login(id, password);
			}catch(Exception e){
				System.out.println("맴버 조회중 오류 발생 / 오류내용: "+e.getMessage());
				return "login-fail.jsp";
			}
			
			if(member == null) {
				System.out.println("유효하지 않은 회원 입니다.");
				return "login-fail.jsp";
			}
			HttpSession session=request.getSession();
			session.setAttribute("mvo", member);
			return "index.jsp";
			
			
			/* 2번째 방법
			String id=request.getParameter("id");
			String password=request.getParameter("password");
			
			System.out.println("id:"+id);
			System.out.println("password:"+password);
			
			MemberVO vo=MemberDAO.getInstance().login(id, password);
			String viewName=null;
			if(vo==null) {// 로그인 실패 
				viewName="login-fail.jsp";
				
			}else { //성공
				HttpSession session=request.getSession();
				session.setAttribute("mvo", vo);
				viewName="index.jsp";
			}
			
			return viewName;
			*/
			
		}
		
		private boolean isEmpty(String str) {
			if(str == null || str == "") return true;
			return false;
		}
		
	/* 임시 DB값 
	 private MemberVO checkMember(String id, String password) {
			List<MemberVO> memberList = new ArrayList<MemberVO>();
			MemberVO samsungMember = new MemberVO("samsung","a","삼돌이","삼성전자","20220503152200");
			memberList.add(samsungMember);
		
			MemberVO result = null;
			for(MemberVO oneMember : memberList) {
				if(oneMember.getId().equals(id) && oneMember.getPassword().equals(password)) {
					return oneMember;
				}
			}
			
			return null;
		}*/
}
