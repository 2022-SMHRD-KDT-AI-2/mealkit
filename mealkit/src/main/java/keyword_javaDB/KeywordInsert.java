package keyword_javaDB;


import java.util.List;

import java.io.FileReader; 
import java.io.IOException; 

import org.json.simple.JSONObject; 
import org.json.simple.parser.JSONParser; 
import org.json.simple.parser.ParseException;


import mealkit.entity.KeywordVO;
import mealkit.model.KeywordDAO;

public class KeywordInsert {

	public static void main(String[] args) {
		JSONParser parser = new JSONParser(); 
		try { 
			FileReader reader = new FileReader("./tag.json"); 
			Object obj = parser.parse(reader); 
			JSONObject jsonObject = (JSONObject) obj; 
			reader.close(); 
			System.out.print(jsonObject); 
			} catch (IOException | ParseException e) { 
				e.printStackTrace(); 
			}

		
		//KeywordDAO dao = new KeywordDAO();
		//dao.insert(0, null, 0);

	}

}
