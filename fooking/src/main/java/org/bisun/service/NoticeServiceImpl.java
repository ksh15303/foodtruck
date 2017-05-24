package org.bisun.service;

import java.util.List;

import javax.inject.Inject;

import org.bisun.domain.Criteria;
import org.bisun.domain.NoticeVO;
import org.bisun.persistence.NoticeDAO;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Inject
	NoticeDAO dao;
	
	@Override
	public List<NoticeVO> showList(Criteria cri) {
		
		return dao.getList(cri);
		
		
	}

	@Override
	public Integer listCount(Criteria cri) {
		
		return dao.listCount(cri);
	}

	
}
