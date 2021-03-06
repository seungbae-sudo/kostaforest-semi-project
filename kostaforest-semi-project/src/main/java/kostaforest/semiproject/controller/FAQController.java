package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.FAQBoardDAO;

public class FAQController  implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setAttribute("faqList", FAQBoardDAO.getInstance().faqList());
		request.setAttribute("url", "FAQ.jsp");
		return "layout.jsp";
	}

}
