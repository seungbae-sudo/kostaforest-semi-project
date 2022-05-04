package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CategoryVO;
import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;

public class CommunityUpdateController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String no = request.getParameter("carNo");
		String boardNo = request.getParameter("boardNo");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		CommunityPostVO cvo = new CommunityPostVO();
		CategoryVO cavo = new CategoryVO();
		cavo.setCarNo(Integer.parseInt(no));
		cvo.setBoardNo(Integer.parseInt(boardNo));
		cvo.setCvo(cavo);
		cvo.setTitle(title);
		cvo.setContent(content);
		CommunityBoardDAO.getInstance().updatePostByNo(cvo);
		ArrayList<CommunityPostVO> list = CommunityBoardDAO.getInstance().findAllPostList(no);
		request.setAttribute("cmuList", list);
		request.setAttribute("carNo", no);
		request.setAttribute("url", "showList1.jsp");
		return "layout.jsp";
	}

}
