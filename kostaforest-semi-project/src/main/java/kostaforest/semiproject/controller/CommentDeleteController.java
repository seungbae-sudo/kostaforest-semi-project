package kostaforest.semiproject.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;

public class CommentDeleteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getMethod().equals("POST")==false)	//post방식이 아니면
			throw new ServletException(getClass().getName()+"POST방식만 서비스 가능합니다.");  //이거 없으면 url에서 맘대로 삭제하고 그럼
		
		String commentNo = request.getParameter("commentNo");
		String pageNo = request.getParameter("pageNo");
		String no = request.getParameter("no");
		String carNo = request.getParameter("carNo");
		CommunityBoardDAO.getInstance().deleteCommentByCommentNo(commentNo);	
		
		return "redirect:CommunityPostDetailController.do?no="+no+"&carNo="+carNo+"&pageNo="+pageNo;
	}

}
