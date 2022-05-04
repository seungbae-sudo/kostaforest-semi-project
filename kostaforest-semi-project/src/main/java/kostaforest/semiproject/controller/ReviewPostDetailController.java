package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.ReviewBoardDAO;
import kostaforest.semiproject.model.ReviewPostVO;

public class ReviewPostDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//로그인 유지기간동안 읽은 글에 대한 조회수 재증가 방지를 위한 코드 
		String no=request.getParameter("no");
		
		
		/*
		  HttpSession session=request.getSession(false);
		  
		  @SuppressWarnings("unchecked") 
		  ArrayList<String> reviewBoardNoList=(ArrayList<String>)session.getAttribute("reviewBoardNoList");//object downcasting 
		  if(reviewBoardNoList.contains(no)==false) { //조회수 증가
			  ReviewBoardDAO.getInstance().updateHits(no); reviewBoardNoList.add(no); 
		  }
		 */
		 
		 
		
		ReviewPostVO rvo=ReviewBoardDAO.getInstance().findPostByNo(no);
		request.setAttribute("rvo",rvo);
		return "reviewDetailContent.jsp";
	}

}
