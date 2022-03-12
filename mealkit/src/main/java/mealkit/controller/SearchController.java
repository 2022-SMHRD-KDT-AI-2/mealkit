package mealkit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mealkit.entity.KeywordVO;
import mealkit.entity.RecipeVO;
import mealkit.model.KeywordDAO;
import mealkit.model.RecipeDAO;

public class SearchController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		return "redirect:/keyword.do";
	}
}
