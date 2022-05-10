package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.EmploymentBoardDAO;
import kostaforest.semiproject.model.EmploymentPostVO;

public class EmploymentUpdatePostController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

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
