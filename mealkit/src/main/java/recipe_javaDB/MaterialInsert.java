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

import mealkit.entity.MaterialVO;
import mealkit.model.RecipeDAO;



public class MaterialInsert {
	public static void main(String[] args) {
		JSONParser parser = new JSONParser(); 
		JSONArray array;
		
		MaterialVO vo = new MaterialVO();
		RecipeDAO dao = new RecipeDAO();
		
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
				
				JSONArray str = (JSONArray) array2.get("ingre");
				
				JSONArray itemList = (JSONArray) array2.get("ingre");
	            for (Object itemInfo : itemList) {
	                String mat_name = (String) ((JSONObject) itemInfo).get("ingre_name");
	                String mat_info = (String) ((JSONObject) itemInfo).get("ingre_unit");
	                String mat_weight = (String) ((JSONObject) itemInfo).get("ingre_count");
	                System.out.println(r_seq + mat_name + mat_weight + mat_info);
	                
	                
	                vo.setR_seq(r_seq);
	                vo.setMat_name(mat_name);
	                vo.setMat_info(mat_info);
	                vo.setMat_weight(mat_weight);
	                int num = dao.insertMaterial(vo);
	                System.out.println(num);
	            }
//	        	private int r_seq;
//	        	private String mat_name;
//	        	private String mat_info;
//	        	private int mat_weight;
				//vo.setR_seq(r_seq);
				//vo.setMat_name(mat_name);
				//
				//int num = dao.insertMaterial(vo);
				//System.out.println(num);
				//
				//long k_seq2 = (long) array2.get("K_seq");
				
			}
		} catch (IOException | ParseException e) { 
			e.printStackTrace(); 
		}

	}
}
