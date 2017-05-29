package org.bisun.persistence;

import java.util.List;

import javax.inject.Inject;

import org.bisun.domain.Criteria;
import org.bisun.domain.ImageBoardVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ImageBoardDAOImpl implements ImageBoardDAO {
	
	static final String namespace = "org.bisun.persistence.ImageBoardDAO";
	
	@Inject
	SqlSessionTemplate session;
	
	@Override
	public List<ImageBoardVO> getList(Criteria cri) {
		return session.selectList(namespace + ".getList", cri);
	}

	@Override
	public Integer getTotal(Criteria cri) {
		return session.selectOne(namespace + ".getTotal", cri);
	}

	@Override
	public void register(ImageBoardVO vo) {
		session.insert(namespace + ".register", vo);
	}

	@Override
	public void addViewCount(Integer ino) {
		session.update(namespace + ".addViewCount", ino);		
	}

	@Override
	public ImageBoardVO view(Integer ino) {
		return session.selectOne(namespace + ".view", ino);
	}

	@Override
	public void delete(Integer ino) {
		session.delete(namespace + ".delete", ino);
	}

	@Override
	public void update(ImageBoardVO vo) {
		session.update(namespace + ".update", vo);		
	}
}
