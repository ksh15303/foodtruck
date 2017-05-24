package org.bisun.persistence;

import java.util.List;

import javax.inject.Inject;

import org.bisun.domain.Criteria;
import org.bisun.domain.NoticeVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	
	@Inject
	SqlSessionTemplate sess;
	
	
	static final String namespace = "org.bisun.persistence.NoticeDAO"; 
	
	
	@Override
	public String getTime() {
		
		return sess.selectOne(namespace + ".getTime");
	}


	@Override
	public List<NoticeVO> getList(Criteria cri) {
		
		return sess.selectList(namespace + ".getList", cri);
	}


	@Override
	public void create(NoticeVO vo) {

		sess.insert(namespace + ".create", vo);
		
	}


	@Override
	public NoticeVO read(Integer nno) {
		
		return sess.selectOne(namespace + ".read", nno);
	}


	@Override
	public void update(NoticeVO vo) {

		sess.update(namespace + ".modify", vo);
		
	}


	@Override
	public void delete(Integer nno) {

		sess.delete(namespace + ".delete", nno);
		
	}


	@Override
	public Integer listCount(Criteria cri) {
		
		return sess.selectOne(namespace + ".listCount", cri);
	}

	
}
