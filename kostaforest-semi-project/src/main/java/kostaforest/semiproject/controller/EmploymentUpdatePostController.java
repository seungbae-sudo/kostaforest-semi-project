package kostaforest.semiproject.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.EmploymentBoardDAO;
import kostaforest.semiproject.model.EmploymentPostVO;

public class EmploymentUpdatePostController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		if(request.getMethod().equals("POST")==false)	//post방식이 아니면
			throw new ServletException(getClass().getName()+"POST방식만 서비스 가능합니다.");  //이거 없으면 url에서 맘대로 삭제하고 그럼

		String no = request.getParameter("no");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String empGroup = request.getParameter("empGroup");
		String empMail=request.getParameter("employmentEmail");

		EmploymentPostVO empPostVO = new EmploymentPostVO();
		empPostVO.setBoardNo(Integer.parseInt(no));
		empPostVO.setTitle(title);
		empPostVO.setContent(content);
		empPostVO.setEmpGroup(empGroup);
		empPostVO.setEmpMail(empMail);
		EmploymentBoardDAO.getInstance().updatePost(empPostVO);

		return "redirect:EmploymentPostListController.do";
	}

}
