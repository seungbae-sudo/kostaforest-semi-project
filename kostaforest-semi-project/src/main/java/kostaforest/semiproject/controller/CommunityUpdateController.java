package kostaforest.semiproject.controller;

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
		String pageNo = request.getParameter("pageNo");
		String carNo = request.getParameter("carNo");
		String boardNo = request.getParameter("boardNo");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		MemberVO mvo = (MemberVO)session.getAttribute("mvo");
		CommunityPostVO cvo = new CommunityPostVO();
		CategoryVO cavo = new CategoryVO();
		cavo.setCarNo(Integer.parseInt(carNo));
		cvo.setBoardNo(Integer.parseInt(boardNo));
		cvo.setCvo(cavo);
		cvo.setTitle(title);
		cvo.setContent(content);
		cvo.setMvo(mvo);
		CommunityBoardDAO.getInstance().updatePostByNo(cvo);
		request.setAttribute("carNo", carNo);
		request.setAttribute("url", "communityList.jsp");
		return "redirect:CommunityPostListController.do?carNo="+carNo+"&pageNo="+pageNo;
	}

}
