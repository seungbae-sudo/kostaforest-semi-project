package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;

public class CommunityDeleteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String no = request.getParameter("no");
		String carNo = request.getParameter("carNo");
		CommunityBoardDAO.getInstance().deleteByBoardNoComment(no);
		CommunityBoardDAO.getInstance().deletePostByNo(no);
		ArrayList<CommunityPostVO> list = CommunityBoardDAO.getInstance().findAllPostList(carNo);
		
		
		request.setAttribute("carNo", carNo);
		request.setAttribute("cmuList", list);
		request.setAttribute("url", "communityList.jsp");
		return "layout.jsp";
	}

}
