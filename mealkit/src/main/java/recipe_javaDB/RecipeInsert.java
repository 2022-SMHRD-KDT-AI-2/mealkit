package recipe_javaDB;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import mealkit.entity.RecipeVO;
import mealkit.model.RecipeDAO;

public class RecipeInsert {
	public static void main(String[] args) {
		JSONParser parser = new JSONParser(); 
		JSONArray array;
		RecipeVO vo = new RecipeVO();
		RecipeDAO dao = new RecipeDAO();
		
		List<RecipeVO> list = dao.selectAllRecipe();
		System.out.println(list);
		
		try { 
			
			//FileReader reader = new FileReader("c:/tag.json"); 
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream("c:/recipe.json"), "utf-8"));
			Object obj = parser.parse(reader); 
			array = new JSONArray();
			array.add(obj);
			
			reader.close(); 
			
			array = (JSONArray) array.get(0);
			for(int i = 0; i < array.size(); i++) {
				
				JSONObject array2 = (JSONObject)array.get(i);
				int r_seq = Integer.parseInt(String.valueOf(array2.get("id")));
				String r_name = (String) array2.get("name");
				String r_content = (String)array2.get("summary");
				String m_id = "sys";
				
				vo.setR_seq(r_seq);
				vo.setR_name(r_name);
				vo.setR_content(r_content);
				vo.setM_id(m_id);
				
				int num = dao.insertRecipe(vo);
				System.out.println(num);
				
				//long k_seq2 = (long) array2.get("K_seq");
				
			}
		} catch (IOException | ParseException e) { 
			e.printStackTrace(); 
		}

	}
}


