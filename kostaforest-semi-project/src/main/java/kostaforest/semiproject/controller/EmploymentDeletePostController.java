package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.EmploymentBoardDAO;

public class EmploymentDeletePostController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String no=request.getParameter("no");
		EmploymentBoardDAO.getInstance().deletePostByNo(no);		
		return "redirect:EmploymentListController.do";
	}

}
