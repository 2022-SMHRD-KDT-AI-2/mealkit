package mealkit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mealkit.entity.RecipeVO;
import mealkit.model.RecipeDAO;

/**
 * Servlet implementation class Test
 */
@WebServlet("/test.data")
public class Test extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		super.service(req, resp);
	}
}
