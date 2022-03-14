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
		mappings.put("/memberinsert.do", new MemberInsertController());
		mappings.put("/join.do", new JoinController());
		mappings.put("/memberinsertform.do", new MemberInsertform());
		
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
