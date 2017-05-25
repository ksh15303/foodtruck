package org.bisun.controller;

import java.io.FileInputStream;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/up/*")
public class UploadController {
	
	private static Logger logger = Logger.getLogger(UploadController.class);
	
	@GetMapping(name = "/display", produces = {"image/jpg"})
	@ResponseBody
	public byte[] display(String fileName) throws Exception {
		
		InputStream fin = new FileInputStream("C:\\zzz\\upimages\\" + fileName);
		
		byte[] arr = IOUtils.toByteArray(fin);
		
		return arr;
	}
	
}
