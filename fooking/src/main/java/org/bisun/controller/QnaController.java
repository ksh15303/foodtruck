package org.bisun.controller;

import javax.inject.Inject;

import org.bisun.service.QnaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qna/*")
public class QnaController {
	
	@Inject
	QnaService service;
	
	@GetMapping("/list")
	public void qnaList(Model model) throws Exception{
		model.addAttribute("list", service.getList());
	}
	
	@GetMapping("/register")
	public void qnaReg(){
		
	}
	
}
