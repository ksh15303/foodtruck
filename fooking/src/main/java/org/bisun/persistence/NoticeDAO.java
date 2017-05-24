package org.bisun.persistence;

import java.util.List;

import org.bisun.domain.Criteria;
import org.bisun.domain.NoticeVO;

public interface NoticeDAO {
	
	public String getTime();
	
	public List<NoticeVO> getList(Criteria cri);
	
	public void create(NoticeVO vo);
	
	public NoticeVO read(Integer nno);
	
	public void update(NoticeVO vo);
	
	public void delete(Integer nno);
	
	public Integer listCount(Criteria cri);
	
}
