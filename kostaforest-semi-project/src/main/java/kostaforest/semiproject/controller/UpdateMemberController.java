package kostaforest.semiproject.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.MemberDAO;
import kostaforest.semiproject.model.MemberVO;

public class UpdateMemberController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equals("POST") == false) // post방식이 아니면
			throw new ServletException(getClass().getName() + "POST방식만 서비스 가능합니다."); // 이거 없으면 url에서 맘대로 삭제하고 그럼

		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String comName = request.getParameter("comName");
		MemberVO mvo = new MemberVO();
		mvo.setId(id);
		mvo.setPassword(password);
		mvo.setComName(comName);
		MemberDAO.getInstance().registerUpdate(mvo);
		session.setAttribute("mvo", mvo);
		return "redirect:MainHomtListController.do";

	}

}
