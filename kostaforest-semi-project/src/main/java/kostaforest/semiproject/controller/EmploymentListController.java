package kostaforest.semiproject.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.EmploymentBoardDAO;
import kostaforest.semiproject.model.Pagination;

public class EmploymentListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//클라이언트로 부터 페이지 번호를 전달받는다 
				String pageNo=request.getParameter("pageNo");
				Pagination pagination=null;
				if(pageNo==null) {//클라이언트가 pageNo를 전달하지 않는 경우에는 첫 페이지를 보여준다
					pagination=new Pagination(EmploymentBoardDAO.getInstance().getTotalPostCount());
				}else {
					pagination=new Pagination(EmploymentBoardDAO.getInstance().getTotalPostCount(),Integer.parseInt(pageNo));
				}

				
//				list.jsp에서 페이징 처리를 하기 위해 Pagination 객체를 공유한다 
				request.setAttribute("pagination", pagination);
				request.setAttribute("empList",EmploymentBoardDAO.getInstance().findPostList(pagination));
				request.setAttribute("url", "employmenList.jsp");

		return "layout.jsp";
	}

}
