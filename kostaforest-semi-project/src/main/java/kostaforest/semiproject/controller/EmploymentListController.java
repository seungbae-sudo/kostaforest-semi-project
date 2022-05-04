package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.EmploymentBoardDAO;
import kostaforest.semiproject.model.EmploymentPostVO;

public class EmploymentListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<EmploymentPostVO> list=EmploymentBoardDAO.getInstance().findPostList();
		request.setAttribute("empList", list);
		return "showList2.jsp";
	}

}
