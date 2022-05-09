package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;

public class CommentDeleteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String commentNo = request.getParameter("commentNo");
		String pageNo = request.getParameter("pageNo");
		String no = request.getParameter("no");
		String carNo = request.getParameter("carNo");
		CommunityBoardDAO.getInstance().deleteCommentByCommentNo(commentNo);	
		
		return "redirect:CommunityPostDetailController.do?no="+no+"&carNo="+carNo+"&pageNo="+pageNo;
	}

}
