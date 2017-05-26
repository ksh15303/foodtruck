package org.bisun.controller;

import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.bisun.domain.Criteria;
import org.bisun.persistence.PdsDataDAO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class PDSTests {

	Logger log = Logger.getLogger(PDSTests.class);
	
	@Inject
	DataSource ds;
	@Inject
	PdsDataDAO dao;
	
	@Test
	public void getListTest(){
		Criteria cri = new Criteria();
		cri.setPage(1);
		cri.setSize(50);
		dao.getList(cri).forEach(data->log.info(data));
	}
	
	@Test
	public void conTest(){
		try {
			log.info(ds.getConnection());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
