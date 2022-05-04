package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.ReviewBoardDAO;
import kostaforest.semiproject.model.ReviewPostVO;

public class ReviewPostListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String pageNo=request.getParameter("pageNo");
//		Pagination pagination=null;
//		if(pageNo==null)	//client가 pageNo를 전달하지 않는 경우에는 첫 페이지를 보여준다. 
//			pagination=new Pagination(BoardDAO.getInstance().getTotalPostCount());
//		else
//			pagination=new Pagination(BoardDAO.getInstance().getTotalPostCount(),Integer.parseInt(pageNo));
//		request.setAttribute("pagination", pagination);
		
		
		ArrayList<ReviewPostVO> list=ReviewBoardDAO.getInstance().findPostList();
		request.setAttribute("revList", list);	
		return "showList3.jsp";
	}

}
