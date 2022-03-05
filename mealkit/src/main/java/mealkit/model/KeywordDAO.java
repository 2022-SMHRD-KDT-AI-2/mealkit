package mealkit.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import mealkit.entity.KeywordVO;

public class KeywordDAO {
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		//connection pool
		try {
		String resource = "Keyword_javaDB/config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<KeywordVO> selectAll() {
		SqlSession session = sqlSessionFactory.openSession();
		List<KeywordVO> list = session.selectList("selectAll");
		session.close();
		return list;
	}
	
	public int insert(int k_seq, String k_name, int k_super_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		KeywordVO vo = new KeywordVO(k_seq, k_name, k_super_seq);
		
		int num = session.insert("insert");
		session.close();
		return num;
		
	}
}
