package mealkit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginController implements Controller{
		@Override
		public String requestHandler(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
			String m_id = request.getParameter("m_id");
			return null;
}
}
