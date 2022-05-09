package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.Pagination;
import kostaforest.semiproject.model.RatingVO;
import kostaforest.semiproject.model.ReviewBoardDAO;
import kostaforest.semiproject.model.ReviewPostVO;

public class ReviewPostListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String pageNo=request.getParameter("pageNo");
	Pagination pagination=null;
	if(pageNo==null)	//client가 pageNo를 전달하지 않는 경우에는 첫 페이지를 보여준다. 
		pagination=new Pagination(ReviewBoardDAO.getInstance().getTotalPostCount());
	 else
		 pagination=new Pagination(ReviewBoardDAO.getInstance().getTotalPostCount(),Integer.parseInt(pageNo));
	
	
		request.setAttribute("pagination", pagination);
		request.setAttribute("revList", ReviewBoardDAO.getInstance().findPostList(pagination));	
		
		ArrayList<RatingVO> ratingList=ReviewBoardDAO.getInstance().findRatingByNo();
		request.setAttribute("ratingList", ratingList);

		request.setAttribute("url","showList3.jsp");
		return "layout.jsp";
	}

}
