package mealkit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mealkit.entity.FavoriteVO;
import mealkit.entity.MemberVO;
import mealkit.entity.RecipeVO;
import mealkit.model.RecipeDAO;

public class FavoriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int r_seq = Integer.parseInt(request.getParameter("r_seq"));
		
		RecipeDAO dao = new RecipeDAO();
		FavoriteVO vo = new FavoriteVO();
		
		HttpSession session = request.getSession();
		MemberVO memvo = (MemberVO) session.getAttribute("memVO");
		
		vo.setM_id(memvo.getM_id());
		vo.setR_seq(r_seq);
		int num = dao.insertFavorite(vo);
		
		
		
		return "redirect:/searchdetail.do?r_seq="+r_seq;
	}

}
