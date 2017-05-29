package org.bisun.service;

import java.util.List;

import javax.inject.Inject;

import org.bisun.domain.Criteria;
import org.bisun.domain.ImageBoardVO;
import org.bisun.persistence.ImageBoardDAO;
import org.springframework.stereotype.Service;

@Service
public class ImageBoardServiceImpl implements ImageBoardService {
	
	@Inject
	ImageBoardDAO dao;
	
	@Override
	public List<ImageBoardVO> getList(Criteria cri) {
		return dao.getList(cri);
	}

	@Override
	public Integer getTotal(Criteria cri) {
		return dao.getTotal(cri);
	}

	@Override
	public void register(ImageBoardVO vo) {
		dao.register(vo);		
	}

	@Override
	public void addViewCount(Integer ino) {
		dao.addViewCount(ino);
		
	}

	@Override
	public ImageBoardVO findByIno(Integer ino) {
		return dao.view(ino);
	}

	@Override
	public void remove(Integer ino) {
		dao.delete(ino);
	}

	@Override
	public void modify(ImageBoardVO vo) {
		dao.update(vo);		
	}

}
