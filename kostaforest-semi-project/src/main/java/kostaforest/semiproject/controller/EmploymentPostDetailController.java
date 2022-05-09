package kostaforest.semiproject.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.EmploymentBoardDAO;
import kostaforest.semiproject.model.EmploymentPostVO;

public class EmploymentPostDetailController implements Controller {

	@SuppressWarnings("unchecked")
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String no=request.getParameter("no");
		EmploymentPostVO empPostVO = EmploymentBoardDAO.getInstance().findPostByNo(no);
		request.setAttribute("empPostVO", empPostVO);
		
		//해당 포스팅이 포함된 리스트 페이지로 으로 돌아가는 페이지넘버를 view로 넘긴다
		String nowPage=request.getParameter("nowPage");
		request.setAttribute("nowPage", nowPage);
		
		//쿠키를 사용한 조회수 증가 
		Cookie viewCookie=null;
		Cookie[] cookies=request.getCookies();
		
		System.out.println("cookie : "+cookies);
		if(cookies != null) {
			for(int i =0; i<cookies.length;i++) {
				if(cookies[i].getName().equals("|"+no+"|")) {
					System.out.println("if 문 쿠키 이름 : "+cookies[i].getName());
					viewCookie=cookies[i];
				}
			}
		}else {
			System.out.println("cookies 확인 로직 : 쿠키가 없습니다");
		}
		
		//만들어진 쿠키가 없음을 확인
		if(viewCookie == null) {
			System.out.println("viewCookie 확인 로직 : 쿠키 없음");
			
			try {
				//이 페이지에 왔다는 증거 쿠키 생성
				Cookie newCookie = new Cookie("|"+no+"|","readCount");
				newCookie.setMaxAge(1*24*60*60);//하루동안 저장한다
				response.addCookie(newCookie);
				//쿠키가 없으니 증가로직 실행
				EmploymentBoardDAO.getInstance().updateHits(no);
			}catch (Exception e) {
				System.out.println("쿠키 넣을 때 오류나면 등장 : "+e.getMessage());
				e.getStackTrace();
			}
		}else {
			System.out.println("viewCookie 확인 로직 : 쿠키 있음");
			String value=viewCookie.getValue();
			System.out.println("viewCookie확인 로직 : 쿠키 value : " + value);
		}
		
		
		
		request.setAttribute("url","employmentDetailContent.jsp");
		return "layout.jsp";
	}

}
