package mealkit.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mealkit.entity.FavoriteVO;
import mealkit.entity.KeywordVO;
import mealkit.entity.MaterialVO;
import mealkit.entity.RecipeVO;



public class RecipeDAO {
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
	
	public List<RecipeVO> selectAllRecipe() {
		SqlSession session = sqlSessionFactory.openSession();
		List<RecipeVO> list = session.selectList("selectAllRecipe");
		session.close();
		return list;
	}
	
	public RecipeVO selectRecipe(int r_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		RecipeVO vo = session.selectOne("selectRecipe", r_seq);
		session.close();
		return vo;
	}
	
	public List<MaterialVO> selectMaterial(int r_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		List<MaterialVO> list = session.selectList("selectMaterial", r_seq);
		session.close();
		return list;
	}
	
	public List<FavoriteVO> selectFavorite(FavoriteVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		List<FavoriteVO> list = session.selectList("selectFavorite", vo);
		session.close();
		return list;
	}
	
	public List<FavoriteVO> selectFavoriteOne(String m_id) {
		SqlSession session = sqlSessionFactory.openSession();
		List<FavoriteVO> list = session.selectList("selectFavoriteOne", m_id);
		session.close();
		return list;
	}
	
	public int insertRecipe(RecipeVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int num = session.insert("insertRecipe", vo);
		session.commit();
		session.close();
		return num;
	}
	
	public int insertMaterial(MaterialVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int num = session.insert("insertMaterial", vo);
		session.commit();
		session.close();
		return num;
	}

	public int insertFavorite(FavoriteVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int num = session.insert("insertFavorite", vo);
		session.commit();
		session.close();
		return num;
	}
}
