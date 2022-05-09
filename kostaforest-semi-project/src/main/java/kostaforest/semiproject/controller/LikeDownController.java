package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.CommentVO;
import kostaforest.semiproject.model.CommunityBoardDAO;

public class LikeDownController implements Controller {

	@SuppressWarnings( "unchecked")
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String pageNo = request.getParameter("pageNo");
		String carNo = request.getParameter("carNo");
		String no = request.getParameter("no");
		ArrayList<String> LikeNoList = (ArrayList<String>)session.getAttribute("LikeNoList");
		ArrayList<String> LikeDownList = (ArrayList<String>)session.getAttribute("LikeDownList");
	
		
		
		if(!LikeDownList.contains(no)) {
			CommunityBoardDAO.getInstance().likeDown(no);
			LikeDownList.add(no);
			LikeNoList.remove(no);
		}
		
		ArrayList<CommentVO> list =  CommunityBoardDAO.getInstance().findByBoardNoAllCommentList(no);
		request.setAttribute("commentList",list);
		request.setAttribute("cvo", CommunityBoardDAO.getInstance().findPostByNo(no));
		request.setAttribute("pageNo", pageNo);
		request.setAttribute("carNo", carNo);
		request.setAttribute("url", "communityDetailContent.jsp");		
		return "layout.jsp";
	}

}
