package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CategoryDAO;
import kostaforest.semiproject.model.CategoryVO;
import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;
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
		ArrayList<CommunityPostVO> list = CommunityBoardDAO.getInstance().findAllPostList2(pagination, carNo);
		ArrayList<CategoryVO> list2 = CategoryDAO.getInstance().list();
		request.setAttribute("pagination", pagination);
		request.setAttribute("carNo", carNo);
		request.setAttribute("cmuList", list);	
		request.setAttribute("caList", list2);
		request.setAttribute("url", "communityList.jsp");
		return "layout.jsp";
	}

}
