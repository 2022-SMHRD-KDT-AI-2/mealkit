package mealkit.controller;

import java.util.HashMap;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/keyword.do", new KeywordController());
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
}