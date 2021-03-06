package mealkit.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mealkit.entity.KeywordVO;
import mealkit.entity.MealkitVO;

public class MealkitDAO {
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
	
	public List<MealkitVO> selectAllMealkit() {
		SqlSession session = sqlSessionFactory.openSession();
		List<MealkitVO> list = session.selectList("selectAllMealkit");
		session.close();
		return list;
	}
	
	public int mealkitInsert(MealkitVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int num = session.insert("mealkitInsert", vo);
		session.commit();
		session.close();
		return num;
	}
}
