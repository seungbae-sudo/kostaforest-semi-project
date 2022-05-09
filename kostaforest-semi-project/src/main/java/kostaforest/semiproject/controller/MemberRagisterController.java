package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.MemberDAO;
import kostaforest.semiproject.model.MemberVO;


public class MemberRagisterController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		String comName=request.getParameter("comName");
		String memberGroup=request.getParameter("memberGroup");
		MemberVO mvo= new MemberVO(id,password,comName,memberGroup);
		MemberDAO.getInstance().register(mvo);
		
	
		return "redirect:LoginFormController.do";
	}
	
}
