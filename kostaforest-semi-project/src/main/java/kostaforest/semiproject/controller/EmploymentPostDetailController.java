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

		
		
		request.setAttribute("url","EmploymentcommunityDetailContent.jsp");
		return "layout.jsp";
	}

}
