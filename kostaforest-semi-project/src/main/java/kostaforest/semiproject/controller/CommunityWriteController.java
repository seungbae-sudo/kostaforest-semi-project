package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CategoryVO;
import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;

public class CommunityWriteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int carNo = Integer.parseInt(request.getParameter("carNo"));
		CommunityPostVO cvo = new CommunityPostVO();
		CategoryVO cavo = new CategoryVO();
		cavo.setCarNo(carNo);
		cvo.setTitle(title);
		cvo.setContent(content);
		cvo.setCvo(cavo);
		CommunityBoardDAO.getInstance().posting(cvo);
		
		return "redirect:showList1.jsp";
	}

}
