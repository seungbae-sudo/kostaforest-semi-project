package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;

public class CommunitySearchController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String title = request.getParameter("title");
		ArrayList<CommunityPostVO> list = CommunityBoardDAO.getInstance().findAllListByTitle(title);
		request.setAttribute("cmuList", list);
		request.setAttribute("url", "communitySearchList.jsp");
		request.setAttribute("title", title);
		return "layout.jsp";
	}

}
