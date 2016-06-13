package com.aishang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbSchoolpic;
import com.aishang.service.SchoolpicService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/manage/schoolpic")
public class SchoolpicController {
	@Autowired
	private SchoolpicService schoolpicService;
	
	@RequestMapping("/list")
	@ResponseBody
	public EasyUIResult getSchoolpicList(@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(defaultValue = "30") Integer rows) {
		// 查询课程列表
		EasyUIResult result = schoolpicService.getSchoolpicList(page, rows);

		return result;
	}
	@RequestMapping("/save")
	@ResponseBody
	public Result addSchoolpic(TbSchoolpic tbSchoolpic){
		Result result = schoolpicService.addSchoolpic(tbSchoolpic);
		return result;
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editSchoolpic(TbSchoolpic tbSchoolpic){
		Result result = schoolpicService.editSchoolpic(tbSchoolpic);
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Result deleteSchoolpic(Long[] ids){
		Result result = schoolpicService.deleteSchoolpic(ids);
		return result;
	}


}
