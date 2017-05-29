package org.bisun.controller;

import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.bisun.domain.Criteria;
import org.bisun.domain.PdsDataVO;
import org.bisun.persistence.PdsDataDAO;
import org.bisun.service.PdsService;
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
	public void getTotal(){
		Criteria cri = new Criteria();
		cri.setType("t");
		cri.setKeyword("입니");
		log.info(dao.getTotalCount(cri));
	}
	
	@Test
	public void insertTest(){
		PdsDataVO vo = new PdsDataVO();
		vo.setPcontent("test내용");
		vo.setPtitle("제목입니당");
		vo.setPwriter("작성자용");
		dao.create(vo);
	}
	
	@Test
	public void deleteTest(){
		dao.delete(3061);
	}
	
	@Test
	public void readTest(){
		log.info(dao.read(3061));
	}
	
	@Test
	public void getListTest(){
		Criteria cri = new Criteria();
		cri.setPage(0);
		cri.setSize(10);
		cri.setType("t");
		cri.setKeyword("니당");
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
