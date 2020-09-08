package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import org.springframework.web.multipart.MultipartFile;

public class Util {
	// 받아온 데이터를 서버에 이미지를 올린다.
	public static void saveFile(MultipartFile mf) {
		File path = new File("web\\img\\foods\\");/*절대값 이미지로 변경 (이나영)*/
		String dir = path.getAbsolutePath();
		byte [] data;
		String imgname = mf.getOriginalFilename();
		try {
			data = mf.getBytes();
			FileOutputStream fo = 
					new FileOutputStream(dir+imgname);
			fo.write(data);
			fo.close();
		}catch(Exception e) {
			
		}
		
	}
	
}




