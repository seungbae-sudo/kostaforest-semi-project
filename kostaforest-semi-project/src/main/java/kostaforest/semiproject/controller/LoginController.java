package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.MemberDAO;
import kostaforest.semiproject.model.MemberVO;

public class LoginController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getMethod().equals("POST")==false)	//post방식이 아니면
			throw new ServletException(getClass().getName()+"POST방식만 서비스 가능합니다.");  //이거 없으면 url에서 맘대로 삭제하고 그럼

		String id = request.getParameter("id");
		String password = request.getParameter("password");
		MemberVO vo = MemberDAO.getInstance().login(id, password);
		String viewName = null;
		if (vo == null) {// 로그인 실패
			viewName = "login-fail.jsp";
		} else { // 성공
			HttpSession session = request.getSession();
			session.setAttribute("mvo", vo);
			viewName = "redirect:MainHomtListController.do";
			
			//조회수를 위한 게시판 별 ArrayList 생성
			session.setAttribute("CommunityBoardNoList", new ArrayList<String>());
			session.setAttribute("ReviewBoardNoList", new ArrayList<String>());
			session.setAttribute("LikeNoList", new ArrayList<String>());
			session.setAttribute("LikeDownList", new ArrayList<String>());
		}
		return viewName;
	}
}



