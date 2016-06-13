package com.aishang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbAboutus;
import com.aishang.service.AboutusService;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/manage/aboutus")
public class AboutusController {
	@Autowired
	private AboutusService aboutusService;
	
	@RequestMapping("/content")
	@ResponseBody
	public List<TbAboutus> getAboutus(){
		return aboutusService.getAboutus();
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editAboutus(TbAboutus aboutus){
		System.out.println(aboutus.getId());
		Result result =aboutusService.editAboutus(aboutus);
		return result;
	}
}
