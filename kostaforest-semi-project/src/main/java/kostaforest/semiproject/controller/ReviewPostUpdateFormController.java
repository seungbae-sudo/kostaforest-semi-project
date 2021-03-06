package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.ReviewBoardDAO;

public class ReviewPostUpdateFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
				
				String no=request.getParameter("no");
				request.setAttribute("rvo", ReviewBoardDAO.getInstance().findPostByNo(no));
				
				request.setAttribute("url","reviewUpdateForm.jsp");
				return "layout.jsp";
	}

}
