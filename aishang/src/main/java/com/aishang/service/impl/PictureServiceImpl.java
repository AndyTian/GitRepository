package com.aishang.service.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.aishang.service.PictureService;
import com.aishang.utils.IDUtils;
@Service
public class PictureServiceImpl implements PictureService {
	@Value("${GetFilePath}")
	private String GetFilePath;
	
	@Value("${SaveFilePath}")
	private String SaveFilePath;

	@Override
	public Map uploadPicture(MultipartFile uploadFile) {
		Map resultMap = new HashMap<>();
		try {
			// 生成一个新的文件名
			// 取原始文件名
			String oldName = uploadFile.getOriginalFilename();
			// 生成新文件名
			// UUID.randomUUID();
			String newName = IDUtils.genImageName();
			newName = newName + oldName.substring(oldName.lastIndexOf("."));
			// 图片上传
			String saveFilePath = SaveFilePath;
			String getFilePath = GetFilePath;
			File fileDir = new File(saveFilePath);
			if (!fileDir.exists()) {
				fileDir.mkdirs();
			}

			FileOutputStream out = new FileOutputStream(saveFilePath + newName);
			// 写入文件
			out.write(uploadFile.getBytes());
			out.flush();
			out.close();

			resultMap.put("error", 0);
			resultMap.put("url", getFilePath + newName);
			System.out.println(getFilePath + newName);
			return resultMap;

		} catch (Exception e) {
			resultMap.put("error", 1);
			resultMap.put("message", "文件上传发生异常");
			return resultMap;
		}
	}

}
