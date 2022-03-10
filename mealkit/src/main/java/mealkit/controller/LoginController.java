package mealkit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mealkit.entity.MemberVO;
import mealkit.model.MemberDAO;



public class LoginController implements Controller{
		@Override
		public String requestHandler(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
			String memId = request.getParameter("memId");
			String memPwd = request.getParameter("memPwd");
			
			MemberVO vo = new MemberVO();
			vo.setM_id(memId);
			vo.setM_pw(memPwd);
			
			MemberDAO dao = new MemberDAO();
			MemberVO memVO = dao.checkLogin(vo);
			if(memVO!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("memVO", memVO);
			}
			return "index";
}
}
