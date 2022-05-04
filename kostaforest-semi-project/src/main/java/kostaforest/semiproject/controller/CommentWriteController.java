package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.CommentVO;
import kostaforest.semiproject.model.CommunityBoardDAO;
import kostaforest.semiproject.model.CommunityPostVO;
import kostaforest.semiproject.model.MemberVO;

public class CommentWriteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String boardNo = request.getParameter("boardNo");
		String comName = request.getParameter("conName");
		String comContent = request.getParameter("com_content");
		CommunityPostVO cmuvo = CommunityBoardDAO.getInstance().findPostByNo(boardNo);
		cmuvo.setBoardNo(Integer.parseInt(boardNo));
		MemberVO mvo = new MemberVO();
		mvo.setComName(comName);
		CommentVO covo = new CommentVO();
		covo.setCommentContent(comContent);
		covo.setCmuvo(cmuvo);
		covo.setMvo(mvo);			
		CommunityBoardDAO.getInstance().comment(covo);
		return "redirect:CommunityPostDetailController.do?no="+boardNo;
	}

}
