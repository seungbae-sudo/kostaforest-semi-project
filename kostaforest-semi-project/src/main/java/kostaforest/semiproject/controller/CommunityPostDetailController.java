package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;

public class CommunityPostDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String no = request.getParameter("no");
		CommunityPostVO cvo = CommunityBoardDAO.getInstance().findPostByNo(no);
		request.setAttribute("cvo", cvo);
		return "detailContent.jsp";
	}

}
