package kostaforest.semiproject.controller;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommunityBoardDAO;

public class mainHomtListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		request.setAttribute("List1", CommunityBoardDAO.getInstance().findAllListByCategoryNo("1"));
		request.setAttribute("List2", CommunityBoardDAO.getInstance().findAllListByCategoryNo("2"));
		request.setAttribute("List3", CommunityBoardDAO.getInstance().findAllListByCategoryNo("3"));
		request.setAttribute("url", "mainCommunityList.jsp");
		return "layout.jsp";
	}

}
