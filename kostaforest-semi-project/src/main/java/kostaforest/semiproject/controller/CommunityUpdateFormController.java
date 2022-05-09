package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CategoryDAO;
import kostaforest.semiproject.model.CommunityBoardDAO;

public class CommunityUpdateFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pageNo = request.getParameter("pageNo");
		String no = request.getParameter("no");
		request.setAttribute("caList", CategoryDAO.getInstance().list());
		request.setAttribute("cvo", CommunityBoardDAO.getInstance().findPostByNo(no));
		request.setAttribute("pageNo", pageNo);
		request.setAttribute("url", "communityUpdateForm.jsp");
		return "layout.jsp";
	}

}
