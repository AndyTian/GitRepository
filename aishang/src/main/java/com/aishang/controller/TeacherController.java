package com.aishang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbTeacher;
import com.aishang.service.TeacherService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/manage/teacher")
public class TeacherController {
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping("/list")
	@ResponseBody
	public EasyUIResult getTeacherList(@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(defaultValue = "30") Integer rows) {
		// 查询课程列表
		EasyUIResult result = teacherService.getTeacherList(page, rows);

		return result;
	}
	@RequestMapping("/save")
	@ResponseBody
	public Result addTeacher(TbTeacher tbTeacher){
		Result result = teacherService.addTeacher(tbTeacher);
		return result;
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editTeacher(TbTeacher tbTeacher){
		Result result = teacherService.editTeacher(tbTeacher);
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Result deleteTeacher(Long[] ids){
		Result result = teacherService.deleteTeacher(ids);
		return result;
	}

}
