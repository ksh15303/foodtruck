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
	public Integer getTotal() {
		return session.selectOne(namespace + ".getTotal");
	}

}
