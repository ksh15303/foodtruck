package org.bisun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pds")
public class PDSController {
	
	@GetMapping("/list")
	public void list(){
		
	}
	
	@GetMapping("/apk")
	public void apk(){
		
	}
	
	
	@GetMapping("/previous")
	public void previous(){
		
	}

}
