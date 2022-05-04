package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.MemberDAO;
import kostaforest.semiproject.model.MemberVO;

public class UpdateMemberController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
				String id = request.getParameter("id");
				String password = request.getParameter("password");
				String comName = request.getParameter("comName");
				MemberVO mvo = new MemberVO();
				mvo.setId(id);
				mvo.setPassword(password);
				mvo.setComName(comName);
				MemberDAO.getInstance().registerUpdate(mvo);
		return "redirect:mainHomtListController.do";
		
	}

}
