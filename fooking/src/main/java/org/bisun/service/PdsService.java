package org.bisun.service;

import java.util.List;

import org.bisun.domain.Criteria;
import org.bisun.domain.PdsDataVO;

public interface PdsService {

	public List<PdsDataVO> getDataList(Criteria cri)throws Exception;
	
	public PdsDataVO findByPno(Integer pno)throws Exception;
	
	public void register(PdsDataVO vo)throws Exception;
	
	public void remove(Integer pno)throws Exception;
	
	public void modify(PdsDataVO vo)throws Exception;
	
	public Integer getTotalCount(Criteria cri)throws Exception;
	
	
}
