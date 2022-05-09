package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;

public class CommunitySearchController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pageNo = request.getParameter("pageNo");
		String title = request.getParameter("title");
		request.setAttribute("cmuList", CommunityBoardDAO.getInstance().findAllListByTitle(title));
		request.setAttribute("pageNo", pageNo);
		request.setAttribute("url", "communitySearchList.jsp");
		request.setAttribute("title", title);
		return "layout.jsp";
	}

}
