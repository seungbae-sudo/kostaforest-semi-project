package kostaforest.semiproject.controller;

import javax.servlet.ServletException;
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
		if(request.getMethod().equals("POST")==false)	//post방식이 아니면
			throw new ServletException(getClass().getName()+"POST방식만 서비스 가능합니다.");  //이거 없으면 url에서 맘대로 삭제하고 그럼
		
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("mvo");
		String carNo = request.getParameter("carNo");
		String pageNo = request.getParameter("pageNo");	
		String boardNo = request.getParameter("boardNo");
		String comContent = request.getParameter("com_content");
		
		CommunityPostVO cmuvo = CommunityBoardDAO.getInstance().findPostByNo(boardNo);
		cmuvo.setBoardNo(Integer.parseInt(boardNo));
		CommentVO covo = new CommentVO();
		covo.setCommentContent(comContent);
		covo.setCmuvo(cmuvo);
		covo.setMvo(mvo);			
		CommunityBoardDAO.getInstance().comment(covo);
		return "redirect:CommunityPostDetailController.do?carNo="+carNo+"&no="+boardNo+"&pageNo="+pageNo;
	}

}
