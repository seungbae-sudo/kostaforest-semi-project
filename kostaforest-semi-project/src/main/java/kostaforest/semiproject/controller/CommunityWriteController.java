package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;

public class CommunityWriteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		CommunityPostVO cvo = new CommunityPostVO();
		cvo.setTitle(title);
		cvo.setContent(content);
		CommunityBoardDAO.getInstance().posting(cvo);
		
		return "rediret:showList1.jsp";
	}

}
