package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.MemberDAO;
import kostaforest.semiproject.model.MemberVO;

public class UpdateMemberController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
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
