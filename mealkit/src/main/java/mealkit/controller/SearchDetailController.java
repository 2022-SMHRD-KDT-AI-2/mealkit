package mealkit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mealkit.entity.FavoriteVO;
import mealkit.entity.MaterialVO;
import mealkit.entity.MemberVO;
import mealkit.entity.RecipeVO;
import mealkit.model.RecipeDAO;

public class SearchDetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int r_seq = 0;
		if (request.getParameter("r_seq") == null) {
			r_seq = Integer.parseInt(String.valueOf(request.getAttribute("r_seq")));
		}else {
			r_seq = Integer.parseInt(request.getParameter("r_seq"));
		}
		
		RecipeDAO dao = new RecipeDAO();
		RecipeVO vo = dao.selectRecipe(r_seq);
		request.setAttribute("r_seq", vo.getR_seq());
		request.setAttribute("r_name", vo.getR_name());
		request.setAttribute("r_content", vo.getR_content());
		List<MaterialVO> mlist = dao.selectMaterial(r_seq);
		request.setAttribute("mlist", mlist);
		
		HttpSession session = request.getSession();
		MemberVO memvo = (MemberVO) session.getAttribute("memVO");
		
		FavoriteVO fvo = new FavoriteVO();
		fvo.setM_id(memvo.getM_id());
		fvo.setR_seq(r_seq);
		
		List<FavoriteVO> flist = dao.selectFavorite(fvo);
		request.setAttribute("flist", flist);
		
		
		
		return "searchDetail";
	}

}
