package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReviewWriteFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setAttribute("url", "reviewWriteForm.jsp");
		return "layout.jsp";
	}

}
