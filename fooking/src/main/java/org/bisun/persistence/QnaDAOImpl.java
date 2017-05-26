package org.bisun.persistence;

import java.util.List;

import javax.inject.Inject;

import org.bisun.domain.Criteria;
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
	public List<QnaVO> getList(Criteria cri) {
		return sess.selectList(namespace+".getList", cri);
	}
	

	@Override
	public Integer getTotal(Criteria cri) {
		return sess.selectOne(namespace+".getTotal", cri);
	}

	@Override
	public void qnaCreate(QnaVO vo) {
		sess.insert(namespace+".qnaCreate");

	}

	@Override
	public QnaVO qnaRead(Integer qno) {
		return sess.selectOne(namespace+".qnaRead", qno);
	}

	@Override
	public void qnaUpdate(QnaVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void qnaDelete(Integer qno) {
		// TODO Auto-generated method stub

	}


}
