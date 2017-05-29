package org.bisun.controller;

import org.apache.log4j.Logger;
import org.bisun.domain.Criteria;
import org.bisun.domain.PageMaker;
import org.bisun.domain.PdsDataVO;
import org.bisun.service.PdsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/pds/*")
public class PDSController {

	private Logger log = Logger.getLogger(PDSController.class);

	@Autowired
	PdsService service;

	@GetMapping("/list")
	public void list() {

	}

	@GetMapping("/apk/newest")
	public void apkNewest() {

	}

	@GetMapping("/apk/previous")
	public void apkPrevious() {

	}

	@GetMapping("/festival/list")
	public void festivalList() {

	}

	@GetMapping("/festival/register")
	public void festivalRegister() {

	}

	@GetMapping("/data/list")
	public void dataList(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		model.addAttribute("dataList", service.getDataList(cri));
		Integer totalCount = service.getTotalCount(cri);
		if (totalCount == 0) {
			model.addAttribute("noSearch", "검색 결과가 없습니다.");
		}
		PageMaker pageMaker = new PageMaker(cri, totalCount);
		model.addAttribute("pageMaker", pageMaker);
	}

	@GetMapping("/data/register")
	public void dataRegister(@ModelAttribute("cri") Criteria cri, Model model) {
		// log.info("register Get..............");
		// log.info(cri);
	}

	@PostMapping("/data/register")
	public void dataRegisterPost(PdsDataVO vo, MultipartFile files) throws Exception {
		if (files != null) {
			log.info(files.getOriginalFilename());
			log.info(files.getSize());
			log.info(files.getContentType());
		}
		// log.info(vo);
		// service.register(vo);
		// return "redirect:/pds/data/list";
	}

	@GetMapping("/data/view")
	public void dataView() {

	}

}
