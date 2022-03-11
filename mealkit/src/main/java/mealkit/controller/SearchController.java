package mealkit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mealkit.entity.KeywordVO;
import mealkit.model.KeywordDAO;

public class SearchController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KeywordDAO dao = new KeywordDAO();
		List<KeywordVO> list = dao.selectAll();
		ArrayList<Integer> alist = new ArrayList<Integer>();
		
		System.out.println(list.size());
		
		for(int i = 0; i < list.size(); i++) {
			System.out.println(request.getParameter(list.get(i).getK_name()));
			System.out.println(request.getParameter(list.get(i).getK_name()));
		}
		
		
		return "redirect:/keyword.do";
	}
}
