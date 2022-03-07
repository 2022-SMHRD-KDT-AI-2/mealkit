package mealkit.controller;

import java.util.HashMap;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/keyword.do", new KeywordController());
		mappings.put("/recipemain.do", new RecipeMainController());
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
