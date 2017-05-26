package org.bisun.persistence;

import java.util.List;

import org.bisun.domain.Criteria;
import org.bisun.domain.QnaVO;

public interface QnaDAO {
	
	public String getTime();
	
	public List<QnaVO> getList(Criteria cri);
	
	public Integer getTotal(Criteria cri);
	
	public void qnaCreate(QnaVO vo);
	
	public QnaVO qnaRead(Integer qno);
	
	public void qnaUpdate(QnaVO vo);
	
	public void qnaDelete(Integer qno);
	

}
