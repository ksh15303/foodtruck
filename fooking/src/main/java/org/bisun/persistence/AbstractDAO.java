package org.bisun.persistence;

import java.util.List;

import javax.inject.Inject;

import org.bisun.domain.Criteria;
import org.mybatis.spring.SqlSessionTemplate;

public abstract class AbstractDAO<E, K> implements GenericDAO<E, K> {

	private String namespace = this.getClass().getName();
	
	@Inject
	SqlSessionTemplate sess;
	
	@Override
	public List<E> getList(Criteria cri) {
		return sess.selectList(namespace+".getList",cri);
	}

	@Override
	public void create(E vo) {
		sess.insert(namespace+".create",vo);
	}

	@Override
	public E read(K num) {
		return sess.selectOne(namespace+".read",num);
	}

	@Override
	public void update(E vo) {
		sess.update(namespace+".update",vo);
	}

	@Override
	public void delete(K num) {
		sess.delete(namespace+".delete",num);
	}

	@Override
	public Integer getTotalCount(Criteria cri) {
		return sess.selectOne(namespace+".getTotal",cri);
	}

	
	
}
