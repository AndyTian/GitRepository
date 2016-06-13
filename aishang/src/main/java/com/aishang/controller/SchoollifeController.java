package com.aishang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbSchoollife;
import com.aishang.service.SchoollifeService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/manage/schoollife")
public class SchoollifeController {
	@Autowired
	private SchoollifeService schoollifeService;
	
	@RequestMapping("/list")
	@ResponseBody
	public EasyUIResult getSchoollifeList(@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(defaultValue = "30") Integer rows) {
		// 查询课程列表
		EasyUIResult result = schoollifeService.getSchoollifeList(page, rows);

		return result;
	}
	@RequestMapping("/save")
	@ResponseBody
	public Result addSchoollife(TbSchoollife tbSchoollife){
		Result result = schoollifeService.addSchoollife(tbSchoollife);
		return result;
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editSchoollife(TbSchoollife tbSchoollife){
		Result result = schoollifeService.editSchoollife(tbSchoollife);
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Result deleteSchoollife(Long[] ids){
		Result result = schoollifeService.deleteSchoollife(ids);
		return result;
	}

}
