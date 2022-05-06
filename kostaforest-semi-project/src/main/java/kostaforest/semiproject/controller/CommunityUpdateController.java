package kostaforest.semiproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.CategoryVO;
import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;
import kostaforest.semiproject.model.MemberVO;

public class CommunityUpdateController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String no = request.getParameter("carNo");
		String boardNo = request.getParameter("boardNo");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		MemberVO mvo = (MemberVO)session.getAttribute("mvo");
		CommunityPostVO cvo = new CommunityPostVO();
		CategoryVO cavo = new CategoryVO();
		cavo.setCarNo(Integer.parseInt(no));
		cvo.setBoardNo(Integer.parseInt(boardNo));
		cvo.setCvo(cavo);
		cvo.setTitle(title);
		cvo.setContent(content);
		cvo.setMvo(mvo);
		CommunityBoardDAO.getInstance().updatePostByNo(cvo);
		ArrayList<CommunityPostVO> list = CommunityBoardDAO.getInstance().findAllPostList(no);
		request.setAttribute("cmuList", list);
		request.setAttribute("carNo", no);
		request.setAttribute("url", "communityList.jsp");
		return "layout.jsp";
	}

}
