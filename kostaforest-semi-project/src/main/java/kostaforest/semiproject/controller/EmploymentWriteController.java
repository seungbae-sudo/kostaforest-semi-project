package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.EmploymentBoardDAO;
import kostaforest.semiproject.model.EmploymentPostVO;
import kostaforest.semiproject.model.MemberVO;

public class EmploymentWriteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String empGroup=request.getParameter("empGroup");
		String empMail=request.getParameter("employmentEmail");
		
		
		
		HttpSession session=request.getSession(false);
		MemberVO mvo= (MemberVO) session.getAttribute("mvo");
		EmploymentPostVO empPostVO=new EmploymentPostVO(title,empGroup,content,empMail,mvo);
		EmploymentBoardDAO.getInstance().posting(empPostVO);
		return "redirect:EmploymentPostListController.do";
	}

}
