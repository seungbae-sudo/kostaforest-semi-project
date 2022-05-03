package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommentVO;
import kostaforest.semiproject.model.CommunityBoardDAO;

public class CommunityPostDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String no = request.getParameter("no");
		ArrayList<CommentVO> list =  CommunityBoardDAO.getInstance().findByBoardNoAllCommentList(no);
		request.setAttribute("commentList",list);
		request.setAttribute("cvo", CommunityBoardDAO.getInstance().findPostByNo(no));
		CommunityBoardDAO.getInstance().hitsUpdate(no);
		return "detailContent.jsp";
	}

}
