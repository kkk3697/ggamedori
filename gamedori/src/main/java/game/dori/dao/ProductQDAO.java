package game.dori.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import game.dori.vo.PRODUCT_Q_VO;

@Repository
public class ProductQDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public List<PRODUCT_Q_VO> selectList(int member_idx) {
		
		return sqlSession.selectList("game.dori.mapper.productQMapper.selectList", member_idx);
	}
	
}
