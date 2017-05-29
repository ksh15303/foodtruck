package org.bisun.service;

import java.util.List;

import org.bisun.domain.Criteria;
import org.bisun.domain.ImageBoardVO;

public interface ImageBoardService {
	
	public List<ImageBoardVO> getList(Criteria cri);
	
	public Integer getTotal(Criteria cri);
	
	public void register(ImageBoardVO vo);
	
	public void addViewCount(Integer ino);
	
	public ImageBoardVO findByIno(Integer ino);
	
	public void remove(Integer ino);
	
	public void modify(ImageBoardVO vo);
}
