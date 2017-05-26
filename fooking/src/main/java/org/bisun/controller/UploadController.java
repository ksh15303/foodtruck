package org.bisun.controller;

import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.imgscalr.Scalr;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
	
	@PostMapping(name = "/upload", produces = "text/html;charset=UTF-8" )
	@ResponseBody
	public String uploadPost(@RequestParam("fileName") MultipartFile fileName) throws FileNotFoundException, IOException{
		logger.info(fileName.getName());
		logger.info(fileName.getOriginalFilename());
		logger.info("uploadPost");
		
		UUID uid = UUID.randomUUID();
		
		String uidStr = uid.toString();
		String saveName = uidStr+"_"+fileName.getOriginalFilename();
		String thumbName = uidStr+"_s_"+fileName.getOriginalFilename();
		
		IOUtils.copy(fileName.getInputStream(), new FileOutputStream("C:\\zzz\\upimages\\"+saveName));
		
		BufferedImage src = ImageIO.read(fileName.getInputStream());
		
		BufferedImage thumb = Scalr.resize(src, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 600);
		
		ImageIO.write(thumb, "jpg", new FileOutputStream("C:\\zzz\\upimages\\"+thumbName));
		
		return thumbName;
	}
	
}
