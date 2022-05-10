package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.EmploymentBoardDAO;

public class EmploymentUpdateFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String no=request.getParameter("no");	
		request.setAttribute("empPostVO", EmploymentBoardDAO.getInstance().findPostByNo(no));
		request.setAttribute("url",  "employmentUpdateForm.jsp");
		return "layout.jsp";
	}

}
