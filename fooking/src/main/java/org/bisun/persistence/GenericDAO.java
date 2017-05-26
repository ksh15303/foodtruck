package org.bisun.persistence;

import java.util.List;

import org.bisun.domain.Criteria;

public interface GenericDAO<E,K> {

	public List<E> getList(Criteria cri);
}
