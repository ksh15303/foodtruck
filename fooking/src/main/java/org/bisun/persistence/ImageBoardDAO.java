package org.bisun.persistence;

import java.util.List;

import org.bisun.domain.Criteria;
import org.bisun.domain.ImageBoardVO;

public interface ImageBoardDAO {
	
	public List<ImageBoardVO> getList(Criteria cri);
	
	public Integer getTotal(Criteria cri);
	
	public void register(ImageBoardVO vo);
	
	public void addViewCount(Integer ino);
	
	public ImageBoardVO view(Integer ino);
	
	public void delete(Integer ino);
	
	public void update(ImageBoardVO vo);
}
