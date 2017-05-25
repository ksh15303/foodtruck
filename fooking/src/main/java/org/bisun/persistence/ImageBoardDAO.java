package org.bisun.persistence;

import java.util.List;

import org.bisun.domain.Criteria;
import org.bisun.domain.ImageBoardVO;

public interface ImageBoardDAO {
	
	public List<ImageBoardVO> getList(Criteria cri);
	
	public Integer getTotal();
	
}
