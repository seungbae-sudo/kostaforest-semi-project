package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kostaforest.semiproject.model.CommentVO;
import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;
import kostaforest.semiproject.model.MemberVO;

public class CommentWriteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String carNo = request.getParameter("carNo");
		MemberVO mvo = (MemberVO)session.getAttribute("mvo");
		String boardNo = request.getParameter("boardNo");
		String comContent = request.getParameter("com_content");
		CommunityPostVO cmuvo = CommunityBoardDAO.getInstance().findPostByNo(boardNo);
		cmuvo.setBoardNo(Integer.parseInt(boardNo));
	
		CommentVO covo = new CommentVO();
		covo.setCommentContent(comContent);
		covo.setCmuvo(cmuvo);
		covo.setMvo(mvo);			
		CommunityBoardDAO.getInstance().comment(covo);
		request.setAttribute("no", boardNo);
		request.setAttribute("carNo", carNo);
		return "redirect:CommunityPostDetailController.do?carNo="+carNo+"&no="+boardNo;
	}

}
