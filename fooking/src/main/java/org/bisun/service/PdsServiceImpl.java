package org.bisun.service;

import java.util.List;

import javax.inject.Inject;

import org.bisun.domain.Criteria;
import org.bisun.domain.PdsDataVO;
import org.bisun.persistence.PdsDataDAO;
import org.springframework.stereotype.Service;

@Service
public class PdsServiceImpl implements PdsService {

	@Inject
	private PdsDataDAO dao;
	
	@Override
	public List<PdsDataVO> getDataList(Criteria cri) throws Exception {
		return dao.getList(cri);
	}

	@Override
	public PdsDataVO findByPno(Integer pno) throws Exception {
		return dao.read(pno);
	}

	@Override
	public void register(PdsDataVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public void remove(Integer pno) throws Exception {
		dao.delete(pno);
	}

	@Override
	public void modify(PdsDataVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public Integer getTotalCount(Criteria cri) throws Exception {
		return dao.getTotalCount(cri);
	}

}
