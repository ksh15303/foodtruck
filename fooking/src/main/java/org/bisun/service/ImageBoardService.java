package org.bisun.service;

import java.util.List;

import org.bisun.domain.Criteria;
import org.bisun.domain.ImageBoardVO;

public interface ImageBoardService {
	
	public List<ImageBoardVO> getList(Criteria cri);
	
	public Integer getTotal();
	
}
