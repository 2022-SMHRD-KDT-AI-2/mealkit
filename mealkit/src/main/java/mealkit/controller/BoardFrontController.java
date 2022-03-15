package mealkit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





public class BoardFrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String reqPath = request.getRequestURI();
		String cpath = request.getContextPath();
		String command = reqPath.substring(cpath.length());
		System.out.println(command);
		
		String nextView=null;
		Controller controller = null;
		
		HandlerMapping handler = new HandlerMapping();
		controller = handler.getController(command);
		nextView = controller.requestHandler(request, response);
		
		
		if(nextView != null) {
			if(nextView.indexOf("redirect:")!=-1) {
				nextView = nextView.split(":")[1];
				response.sendRedirect("/mealkit"+nextView);
			}else if(nextView.indexOf("index")!=-1) {
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}else {
				
				//RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/board/"+nextView+".jsp");
				RequestDispatcher rd = request.getRequestDispatcher(ViewResolver.makeURL(nextView));
				rd.forward(request, response);
			}
		}
			
	}

}
