package org.bisun.controller;

import java.io.File;

import org.bisun.domain.Criteria;
import org.bisun.domain.ImageBoardVO;
import org.bisun.domain.PageMaker;
import org.bisun.service.ImageBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/imageboard/*")
public class ImageBoardController {
		
	
	@Autowired
	ImageBoardService service;
	
	@GetMapping("/list")
	public void getList(@ModelAttribute("cri") Criteria cri, Model model){
		cri.setSize(6);
		model.addAttribute("list",service.getList(cri));
		model.addAttribute("pageMaker", new PageMaker(cri, service.getTotal(cri)));
	}
	
	@GetMapping("/register")
	public void register(@ModelAttribute("cri") Criteria cri){
		
	}
	
	@PostMapping("/register")
	public String postRegister(ImageBoardVO vo){
		
		service.register(vo);		
		return "redirect:/imageboard/list";
	}
	
	@GetMapping("/view")
	public void view(@ModelAttribute("cri") Criteria cri, Integer ino, Model model){
		model.addAttribute("vo", service.findByIno(ino));		
	}
	
	@PostMapping("/viewcount/{ino}")
	public void addviewcount(@PathVariable("ino") Integer ino){
		service.addViewCount(ino);
	}
	
	@PostMapping("/view")
	public String postView(@ModelAttribute("cri") Criteria cri, Integer ino, RedirectAttributes rttr){
		service.remove(ino);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword",cri.getKeyword());
		
		String fileName = service.findByIno(ino).getImagename();
		String temp = fileName.replace("_s_", "_");
		
		File imgFile = new File("C:\\zzz\\upimages\\" + fileName);
		File imgFile2 = new File("C:\\zzz\\upimages\\" + temp);
		imgFile.delete();
		imgFile2.delete();
		
		return "redirect:/imageboard/list";
	}
	
	@GetMapping("/update")
	public void update(@ModelAttribute("cri") Criteria cri, Integer ino, Model model){
		model.addAttribute("vo", service.findByIno(ino));
	}
	

}
