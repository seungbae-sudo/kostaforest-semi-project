package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CategoryDAO;
import kostaforest.semiproject.model.CategoryVO;
import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;

public class CommunityUpdateFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pageNo = request.getParameter("pageNo");
		String no = request.getParameter("no");
		CommunityPostVO cvo = CommunityBoardDAO.getInstance().findPostByNo(no);
		ArrayList<CategoryVO> list = CategoryDAO.getInstance().list();
		request.setAttribute("caList", list);
		request.setAttribute("cvo", cvo);
		request.setAttribute("pageNo", pageNo);
		request.setAttribute("url", "communityUpdateForm.jsp");
		return "layout.jsp";
	}

}
