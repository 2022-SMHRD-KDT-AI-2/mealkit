package mealkit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mealkit.entity.KeywordSuperVO;
import mealkit.entity.KeywordVO;
import mealkit.entity.RecipeVO;
import mealkit.model.KeywordDAO;
import mealkit.model.RecipeDAO;



public class KeywordController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KeywordDAO dao = new KeywordDAO();
		List<KeywordVO> list = dao.selectAll();
		List<KeywordSuperVO> list_super = dao.selectSuperAll();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		request.setAttribute("list", list);
		request.setAttribute("listSuper", list_super);
		
		RecipeDAO rdao = new RecipeDAO();
		List<RecipeVO> rlist = rdao.selectAllRecipe();
		
		request.setAttribute("rlist", rlist);
		
		return "search";
		
		
	}
}
