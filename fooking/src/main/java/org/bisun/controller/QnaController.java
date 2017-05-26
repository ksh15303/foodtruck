package org.bisun.controller;

import javax.inject.Inject;

import org.bisun.domain.Criteria;
import org.bisun.domain.PageMaker;
import org.bisun.domain.QnaVO;
import org.bisun.service.QnaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qna/*")
public class QnaController {
	
	@Inject
	QnaService service;
	
	@GetMapping("/list")
	public void qnaList(@ModelAttribute("cri")Criteria cri, Model model) throws Exception{
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new PageMaker(cri, service.getTotal(cri)));
	}
	
	@GetMapping("/register")
	public void qnaReg(){
		
	}
	
	@GetMapping("/view")
	public void qnaRead(@ModelAttribute("cri")Criteria cri, Integer qno, Model model) throws Exception{
		QnaVO vo = service.findBy(qno);
		model.addAttribute("vo", vo);
	}
	
}
