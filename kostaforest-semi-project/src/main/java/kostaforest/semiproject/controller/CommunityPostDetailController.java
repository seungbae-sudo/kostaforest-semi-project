package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.CommentVO;
import kostaforest.semiproject.model.CommunityBoardDAO;

public class CommunityPostDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pageNo = request.getParameter("pageNo");
		String no = request.getParameter("no");
		String carNo = request.getParameter("carNo");
		ArrayList<CommentVO> list =  CommunityBoardDAO.getInstance().findByBoardNoAllCommentList(no);
		request.setAttribute("commentList",list);
		request.setAttribute("cvo", CommunityBoardDAO.getInstance().findPostByNo(no));
		
		HttpSession session = request.getSession(false);
		@SuppressWarnings("unchecked")
		ArrayList<String> CommunityBoardNoList = (ArrayList<String>) session.getAttribute("CommunityBoardNoList");	
		if(!CommunityBoardNoList.contains(no)) {
			CommunityBoardDAO.getInstance().hitsUpdate(no);
			CommunityBoardNoList.add(no);
		}	
			request.setAttribute("pageNo", pageNo);
			request.setAttribute("carNo", carNo);
			request.setAttribute("url", "communityDetailContent.jsp");		
			return "layout.jsp";
	}

}
