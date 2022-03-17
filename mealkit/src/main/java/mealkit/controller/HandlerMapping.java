package mealkit.controller;

import java.util.HashMap;


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
		mappings.put("/memberinsertform.do", new MemberInsertFormController());
		mappings.put("/loginform.do", new LoginFormController());
		mappings.put("/searchdetail.do", new SearchDetailController());
		mappings.put("/favorite.do", new FavoriteController());
		mappings.put("/loginnot.do", new LoginNotController());
		mappings.put("/favoriteform.do", new FavoriteFormController());
		mappings.put("/mealkitmain.do", new MealkitController());
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
