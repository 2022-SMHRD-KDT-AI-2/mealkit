package mealkit.model;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mealkit.entity.MemberVO;



public class MemberDAO {
	
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
	
	public MemberVO checkLogin(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO memVO = session.selectOne("checkLogin", vo);
		session.close();
		return memVO;
	}
	
	public MemberVO memberJoin(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO memVO = session.selectOne("memberJoin", vo);
		session.close();
		return memVO;
	}
}
