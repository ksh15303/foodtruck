package org.bisun.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.bisun.domain.Criteria;
import org.bisun.domain.NoticeVO;
import org.bisun.domain.PageMaker;
import org.bisun.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	NoticeService service;
	
	private static final Logger logger = Logger.getLogger(NoticeController.class);

	@GetMapping("/list")
	public void getList(@ModelAttribute("cri") Criteria cri, Model model){
		List<NoticeVO> list = service.showList(cri);

		PageMaker pm = new PageMaker(cri, service.listCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pm);
	}
}
	
