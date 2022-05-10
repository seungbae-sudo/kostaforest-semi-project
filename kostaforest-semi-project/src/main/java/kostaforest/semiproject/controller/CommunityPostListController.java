package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CategoryDAO;
import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.Pagination;

public class CommunityPostListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String carNo = request.getParameter("carNo");
		String pageNo = request.getParameter("pageNo");
		Pagination pagination = null;
		if(pageNo==null) {// 클라이언트가 pageNo를 전달하지 않는 경우에는 첫 페이지를 보여준다.
			pagination = new Pagination(CommunityBoardDAO.getInstance().getTotalPostCount(carNo));
		}else {
			pagination = new Pagination(CommunityBoardDAO.getInstance().getTotalPostCount(carNo), Integer.parseInt(pageNo));
		}
		request.setAttribute("pagination", pagination);
		request.setAttribute("carNo", carNo);
		request.setAttribute("cmuList", CommunityBoardDAO.getInstance().findAllPostList2(pagination, carNo));	
		request.setAttribute("caList", CategoryDAO.getInstance().list());
		request.setAttribute("url", "communityList.jsp");
		return "layout.jsp";
	}

}
