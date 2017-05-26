package org.bisun.service;

import java.util.List;

import javax.inject.Inject;

import org.bisun.domain.Criteria;
import org.bisun.domain.QnaVO;
import org.bisun.persistence.QnaDAO;
import org.springframework.stereotype.Repository;

@Repository
public class QnaServiceImpl implements QnaService {
	
	@Inject
	QnaDAO dao;
	
	@Override
	public List<QnaVO> getList(Criteria cri) throws Exception {
		return dao.getList(cri);
	}

	@Override
	public Integer getTotal(Criteria cri) throws Exception {
		return dao.getTotal(cri);
	}
	
	@Override
	public void register(QnaVO vo) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public QnaVO findBy(Integer qno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modify(QnaVO vo) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void remove(Integer qno) throws Exception {
		// TODO Auto-generated method stub

	}


}
