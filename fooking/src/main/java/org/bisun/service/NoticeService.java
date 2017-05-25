package org.bisun.service;

import java.util.List;

import org.bisun.domain.Criteria;
import org.bisun.domain.NoticeVO;

public interface NoticeService {

	public List<NoticeVO> showList(Criteria cri);
	
	public Integer listCount(Criteria cri);
	
	public void register(NoticeVO vo);
}
