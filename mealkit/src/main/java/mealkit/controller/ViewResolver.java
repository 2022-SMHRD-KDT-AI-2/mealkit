package mealkit.controller;

public class ViewResolver {
	public static String makeURL(String nextView) {
		return "WEB-INF/board/"+nextView+".jsp";
	}
}
