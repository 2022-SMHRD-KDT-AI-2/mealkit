package mealkit.controller;

import java.util.HashMap;

import kr.smhrd.controller.LoginController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/keyword.do", new KeywordController());
		mappings.put("/recipemain.do", new RecipeMainController());
		mappings.put("/search.do", new SearchController());
		mappings.put("/login.do", new LoginController());
		mappings.put("/logout.do", new LogOutController());
		
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
