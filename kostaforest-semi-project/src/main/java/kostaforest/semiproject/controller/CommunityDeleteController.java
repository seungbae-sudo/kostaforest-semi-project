package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;

public class CommunityDeleteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pageNo = request.getParameter("pageNo");
		String no = request.getParameter("no");
		String carNo = request.getParameter("carNo");
		CommunityBoardDAO.getInstance().deleteByBoardNoComment(no);
		CommunityBoardDAO.getInstance().deletePostByNo(no);
		return "redirect:CommunityPostListController.do?carNo="+carNo+"&pageNo="+pageNo;
	}

}
