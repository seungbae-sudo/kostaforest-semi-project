package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;
import kostaforest.semiproject.model.EmploymentBoardDAO;
import kostaforest.semiproject.model.EmploymentPostVO;

public class EmploymentPostDetailController implements Controller {

	@SuppressWarnings("unchecked")
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String no=request.getParameter("no");
		EmploymentPostVO empPostVO = EmploymentBoardDAO.getInstance().findPostByNo(no);
		request.setAttribute("empPostVO", empPostVO);
		System.out.println(no);
		//조회수
//		HttpSession session=request.getSession(false);
//		ArrayList<String> EmploymentBoardNoList = (ArrayList<String>) session.getAttribute("EmploymentBoardNoList");
//		if (EmploymentBoardNoList.contains(no)==false) {
//			EmploymentBoardDAO.getInstance().updateHits(no);
//			EmploymentBoardNoList.add(no);
//		}
		
		request.setAttribute("url","EmploymentDetailContent.jsp");
		return "layout.jsp";
	}

}
