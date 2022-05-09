package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.CommentVO;
import kostaforest.semiproject.model.CommunityBoardDAO;

public class LikeUpController implements Controller {

	@SuppressWarnings( "unchecked")
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		ArrayList<String> LikeNoList = (ArrayList<String>)session.getAttribute("LikeNoList");
		ArrayList<String> LikeDownList = (ArrayList<String>)session.getAttribute("LikeDownList");
		String carNo = request.getParameter("carNo");
		String no = request.getParameter("no");
		String pageNo =request.getParameter("pageNo");
		
		if(!LikeNoList.contains(no)) {
			CommunityBoardDAO.getInstance().likeUpdate(no);
			LikeNoList.add(no);			
			LikeDownList.remove(no);
		}
		
		ArrayList<CommentVO> list =  CommunityBoardDAO.getInstance().findByBoardNoAllCommentList(no);
		request.setAttribute("commentList",list);
		request.setAttribute("cvo", CommunityBoardDAO.getInstance().findPostByNo(no));
		request.setAttribute("carNo", carNo);
		request.setAttribute("pageNo", pageNo);
		request.setAttribute("url", "communityDetailContent.jsp");		
		return "layout.jsp";
	}

}
