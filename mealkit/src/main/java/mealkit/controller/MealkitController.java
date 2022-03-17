package mealkit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mealkit.entity.MealkitVO;
import mealkit.model.MealkitDAO;

public class MealkitController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MealkitDAO dao = new MealkitDAO();
		List<MealkitVO> mlist = dao.selectAllMealkit();
		request.setAttribute("mlist", mlist);
		
		
		return "mealkitMain";
	}
}
