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

	
}
