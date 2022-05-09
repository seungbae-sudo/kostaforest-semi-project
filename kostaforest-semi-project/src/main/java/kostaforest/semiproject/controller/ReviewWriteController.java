package kostaforest.semiproject.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.MemberVO;
import kostaforest.semiproject.model.ReviewBoardDAO;
import kostaforest.semiproject.model.ReviewPostVO;

public class ReviewWriteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getMethod().equals("POST")==false)	//post방식이 아니면
			throw new ServletException(getClass().getName()+"POST방식만 서비스 가능합니다."); 
		
		HttpSession session = request.getSession();
		
		String title=request.getParameter("title");
		String rating=request.getParameter("rating");
		String content=request.getParameter("content");
		MemberVO mvo = (MemberVO)session.getAttribute("mvo");
		ReviewPostVO rvo=new ReviewPostVO();
		rvo.setTitle(title);
		rvo.setRating(Integer.parseInt(rating));
		rvo.setContent(content);
		rvo.setMvo(mvo);
		ReviewBoardDAO.getInstance().posting(rvo);
		return "redirect:ReviewPostListController.do";
	}

}
