package org.bisun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/imageboard/*")
public class ImageBoardController {
	
	@GetMapping("/list")
	public void getList(){
		
	}
	
	@GetMapping("/register")
	public void register(){
		
	}

}
