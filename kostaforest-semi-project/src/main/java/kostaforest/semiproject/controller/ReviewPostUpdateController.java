package kostaforest.semiproject.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.ReviewBoardDAO;
import kostaforest.semiproject.model.ReviewPostVO;

public class ReviewPostUpdateController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getMethod().equals("POST")==false)	//post방식이 아니면
			throw new ServletException(getClass().getName()+"POST방식만 서비스 가능합니다."); 
		
		String no=request.getParameter("no");
		String title=request.getParameter("title");
		String rating=request.getParameter("rating");
		String content=request.getParameter("content");
		ReviewPostVO rvo=new ReviewPostVO();
		rvo.setReNo(Integer.parseInt(no));
		rvo.setTitle(title);
		rvo.setRating(Integer.parseInt(rating));
		rvo.setContent(content);
		ReviewBoardDAO.getInstance().updatePost(rvo);
		
		return "redirect:ReviewPostListController.do";
	}

}
