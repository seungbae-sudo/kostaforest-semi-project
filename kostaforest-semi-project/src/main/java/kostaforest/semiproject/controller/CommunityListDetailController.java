package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CategoryDAO;
import kostaforest.semiproject.model.CategoryVO;
import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;

public class CommunityListDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String carNo = request.getParameter("carNo");
		ArrayList<CommunityPostVO> list = CommunityBoardDAO.getInstance().findAllPostList(carNo);
		request.setAttribute("carNo", carNo);
		request.setAttribute("cmuList", list);
		request.setAttribute("url", "communityList.jsp");
		return "layout.jsp";
	}

}
