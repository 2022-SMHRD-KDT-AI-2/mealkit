package mealkit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mealkit.entity.KeywordVO;
import mealkit.model.KeywordDAO;



public class KeywordController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KeywordDAO dao = new KeywordDAO();
		List<KeywordVO> list = dao.selectAll();
		request.setCharacterEncoding("utf-8");
		
		request.setAttribute("list", list);
		System.out.println(list);
		
		return "search";
		
		
	}
}
