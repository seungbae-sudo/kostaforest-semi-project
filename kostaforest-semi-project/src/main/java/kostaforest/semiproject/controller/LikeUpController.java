package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;

public class LikeUpController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String no = request.getParameter("no");
		CommunityBoardDAO.getInstance().likeUpdate(no);
		
		return "CommunityPostListController.do";
	}

}
