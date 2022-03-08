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
		String resource = "mealkit/model/config.xml";
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
	
	public int insert(KeywordVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int num = session.insert("keywordInsert", vo);
		session.commit();
		session.close();
		return num;
		
	}
}
