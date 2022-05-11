package kostaforest.semiproject.controller;

import javax.servlet.ServletException;
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
		if(request.getMethod().equals("POST")==false)	//post방식이 아니면
			throw new ServletException(getClass().getName()+"POST방식만 서비스 가능합니다.");  //이거 없으면 url에서 맘대로 삭제하고 그럼
		
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
