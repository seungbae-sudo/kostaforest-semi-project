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
		String no = request.getParameter("no");
		ArrayList<CommentVO> list =  CommunityBoardDAO.getInstance().findByBoardNoAllCommentList(no);
		request.setAttribute("commentList",list);
		request.setAttribute("cvo", CommunityBoardDAO.getInstance().findPostByNo(no));
		
	//	HttpSession session = request.getSession(false);
		//@SuppressWarnings("unchecked")
	//	ArrayList<String> myboardNoList = (ArrayList<String>) session.getAttribute("myboardNoList");	
		//if(!myboardNoList.contains(no)) {
			CommunityBoardDAO.getInstance().hitsUpdate(no);
		//	myboardNoList.add(no);
	//	}
			request.setAttribute("url", "detailContent.jsp");
			return "layout.jsp";
	}

}
