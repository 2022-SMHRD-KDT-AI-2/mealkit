package keyword_javaDB;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader; 
import java.io.IOException;
import java.io.InputStreamReader;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject; 
import org.json.simple.parser.JSONParser; 
import org.json.simple.parser.ParseException;

import mealkit.entity.KeywordSuperVO;
import mealkit.entity.KeywordVO;
import mealkit.model.KeywordDAO;

public class KeywordInsert {

	public static void main(String[] args) {
		JSONParser parser = new JSONParser(); 
		JSONArray array, array_super;
		KeywordDAO dao = new KeywordDAO();
		
		try { 
			
//			//FileReader reader = new FileReader("c:/tag.json"); 
//			BufferedReader reader_super = new BufferedReader(new InputStreamReader(new FileInputStream("c:/tag_super.json"), "utf-8"));
//			Object obj_super = parser.parse(reader_super); 
//			array_super = new JSONArray();
//			array_super.add(obj_super);
//			
//			reader_super.close(); 
			
			//FileReader reader = new FileReader("c:/tag.json"); 
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream("c:/tag.json"), "utf-8"));
			Object obj = parser.parse(reader); 
			array = new JSONArray();
			array.add(obj);
			
			reader.close(); 
			
			
			
//			array_super = (JSONArray) array_super.get(0);
//			for(int i = 0; i < array_super.size(); i++) {
//				
//				JSONObject array2_super = (JSONObject)array_super.get(i);
//				KeywordSuperVO vo_super = new KeywordSuperVO();
//				
//				long k_super_seq2 = (long) array2_super.get("K_super_seq");
//				int k_super_seq = (int)k_super_seq2;
//				
//				
//				String k_super_name = String.valueOf(array2_super.get("K_name"));
//				
//				vo_super.setK_super_seq(k_super_seq);
//				vo_super.setK_super_name(k_super_name);
//				
//				
//				int num = dao.insertSuper(vo_super);
//				System.out.println(num);
//			}
			
			
			array = (JSONArray) array.get(0);
			for(int i = 0; i < array.size(); i++) {
				
				JSONObject array2 = (JSONObject)array.get(i);
				KeywordVO vo = new KeywordVO();
				
				long k_seq2 = (long) array2.get("K_seq");
				int k_seq = (int)k_seq2;
				
				
				String k_name = String.valueOf(array2.get("K_name"));
				
				long k_super_seq2 = (long) array2.get("K_super_seq");
				int k_super_seq = (int)k_super_seq2;
				
				vo.setK_seq(k_seq);
				vo.setK_name(k_name);
				vo.setK_super_seq(k_super_seq);
				
				
				int num = dao.insert(vo);
				System.out.println(num);
			}
			
			
			
		} catch (IOException | ParseException e) { 
				e.printStackTrace(); 
		}

	}

}
