package org.bisun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pds/*")
public class PDSController {
	
	@GetMapping("/list")
	public void list(){
		
	}
	@GetMapping("/apk/newest")
	public void apkNewest(){
		
	}
	
	@GetMapping("/apk/previous")
	public void apkPrevious(){
		
	}
	@GetMapping("/festival/list")
	public void festivalList(){
		
	}
	@GetMapping("/festival/register")
	public void festivalRegister(){
		
	}
	@GetMapping("/data/list")
	public void dataList(){
		
	}
	@GetMapping("/data/register")
	public void dataRegister(){
		
	}
	

}
