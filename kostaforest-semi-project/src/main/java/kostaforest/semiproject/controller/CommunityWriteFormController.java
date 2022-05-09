package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CategoryDAO;
import kostaforest.semiproject.model.CategoryVO;

public class CommunityWriteFormController implements Controller {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<CategoryVO> list = CategoryDAO.getInstance().list();
		String pageNo = request.getParameter("pageNo");
		String carNo = request.getParameter("no");
		System.out.println(carNo);
		request.setAttribute("caList", list);
		request.setAttribute("carNo", carNo);	
		request.setAttribute("pageNo", pageNo);
		request.setAttribute("url", "communityWriteForm.jsp");	
		return "layout.jsp";

	}
}
