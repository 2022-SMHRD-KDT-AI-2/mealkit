package mealkit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mealkit.entity.MemberVO;
import mealkit.model.MemberDAO;

public class MemberInsertController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		request.setCharacterEncoding("utf-8");
		MemberVO vo = new MemberVO();
		MemberDAO dao = new MemberDAO();
		
		
		vo.setM_id(request.getParameter("id"));
		vo.setM_pw(request.getParameter("Password2"));
		vo.setM_phone(request.getParameter("phoneNum"));
		vo.setM_birthdate(request.getParameter("birthday"));
		vo.setM_addr(request.getParameter("adr"));
		vo.setM_emai(request.getParameter("emai"));
		System.out.println(request.getParameter("adr"));
		int num = dao.insertMember(vo);
		System.out.println(num);
		return "index";
	}
}
