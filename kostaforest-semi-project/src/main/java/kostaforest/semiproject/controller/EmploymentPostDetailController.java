package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;
import kostaforest.semiproject.model.EmploymentBoardDAO;
import kostaforest.semiproject.model.EmploymentPostVO;

public class EmploymentPostDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String no=request.getParameter("no");
		EmploymentPostVO empPostVO = EmploymentBoardDAO.getInstance().findPostByNo(no);
		request.setAttribute("empPostVO", empPostVO);
		request.setAttribute("url","EmploymentDetailContent.jsp");
		return "layout.jsp";
	}

}
