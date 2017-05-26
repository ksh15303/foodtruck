package org.bisun.service;

import java.util.List;

import org.bisun.domain.Criteria;
import org.bisun.domain.QnaVO;

public interface QnaService {
	
	public List<QnaVO> getList(Criteria cri) throws Exception;
	
	public Integer getTotal(Criteria cri)throws Exception;
	
	public void register(QnaVO vo) throws Exception;
	
	public QnaVO findBy(Integer qno) throws Exception;
	
	public void modify(QnaVO vo) throws Exception;
	
	public void remove(Integer qno) throws Exception;
}
