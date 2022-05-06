package kostaforest.semiproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kostaforest.semiproject.model.MemberDAO;

public class CheckIdController implements Controller {
		@Override
		public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String id=request.getParameter("id");
			boolean result=MemberDAO.getInstance().idcheck(id);
			//result 가 true이면 중복 , false 이면 중복되지 않는다 
			String checkResult=null;
			if(result)
				checkResult="fail"; //중복되면 사용할 수 없다는 의미로 fail을 할당해서 클라이언트에 응답한다 
			else
				checkResult="ok";//중복되지 않으므로 사용할 수 있다는 의미로 ok를 할당해 보낸다 
			request.setAttribute("responsebody", checkResult);		
			return "AjaxView";
		}
}