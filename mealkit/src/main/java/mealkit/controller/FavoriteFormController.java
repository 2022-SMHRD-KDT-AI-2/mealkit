package mealkit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mealkit.entity.FavoriteVO;
import mealkit.entity.MemberVO;
import mealkit.entity.RecipeVO;
import mealkit.model.RecipeDAO;

public class FavoriteFormController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberVO memvo = (MemberVO) session.getAttribute("memVO");
		List<RecipeVO> rlist = new ArrayList<RecipeVO>();
		
		String m_id = String.valueOf(memvo.getM_id());
		
		RecipeDAO dao = new RecipeDAO();
		
		List<FavoriteVO> list = dao.selectFavoriteOne(m_id);
		for(FavoriteVO i : list) {
			RecipeVO vo = dao.selectRecipe(i.getR_seq());
			rlist.add(vo);
		}
		request.setAttribute("rlist", rlist);
		
		
		return "favoriteForm";
	}
}
