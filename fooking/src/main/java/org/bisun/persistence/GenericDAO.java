package org.bisun.persistence;

import java.util.List;

import org.bisun.domain.Criteria;

public interface GenericDAO<E,K> {

	public List<E> getList(Criteria cri);
	
	public void create(E vo);
	
	public E read(K num);
	
	public void update(E vo);
	
	public void delete(K num);
	
	public Integer getTotalCount(Criteria cri);
}
