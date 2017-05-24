package org.bisun.persistence;

import java.util.List;

import javax.inject.Inject;

import org.bisun.domain.QnaVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAOImpl implements QnaDAO {
	
	public static String namespace = "org.bisun.persistence.QnaDAO";
	
	@Inject
	SqlSessionTemplate sess;

	@Override
	public String getTime() {
		return sess.selectOne(namespace+".getTime");
	}

	@Override
	public List<QnaVO> getList(Integer qno) {
		return sess.selectList(namespace+".getList", qno);
	}

	@Override
	public void create(QnaVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public QnaVO read(Integer qno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(QnaVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer qno) {
		// TODO Auto-generated method stub

	}

}
