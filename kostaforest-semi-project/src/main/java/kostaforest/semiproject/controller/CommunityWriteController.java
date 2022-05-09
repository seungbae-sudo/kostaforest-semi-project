package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.CategoryVO;
import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;
import kostaforest.semiproject.model.MemberVO;

public class CommunityWriteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String pageNo = request.getParameter("pageNo");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int carNo = Integer.parseInt(request.getParameter("carNo"));
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		CommunityPostVO cvo = new CommunityPostVO();
		CategoryVO cavo = new CategoryVO();
		cavo.setCarNo(carNo);
		cvo.setTitle(title);
		cvo.setContent(content);
		cvo.setCvo(cavo);
		cvo.setMvo(mvo);;
		CommunityBoardDAO.getInstance().posting(cvo);
		return "redirect:CommunityPostListController.do?carNo="+carNo+"&pageNo="+pageNo;
	}

}
