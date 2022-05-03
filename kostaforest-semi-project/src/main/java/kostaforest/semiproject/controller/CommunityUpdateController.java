package kostaforest.semiproject.controller;

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
		return "redirect:CommunityPostListController.do";
	}

}
