package kostaforest.semiproject.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.ReviewBoardDAO;
import kostaforest.semiproject.model.ReviewPostVO;

public class ReviewPostUpdateFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//request.method 확인
				if(request.getMethod().equals("POST")==false)	//post방식이 아니면
					throw new ServletException(getClass().getName()+"POST방식만 서비스 가능합니다."); 
				
				String no=request.getParameter("no");
				request.setAttribute("rvo", ReviewBoardDAO.getInstance().findPostByNo(no));
				
				request.setAttribute("url","reviewUpdateForm.jsp");
				return "layout.jsp";
	}

}
