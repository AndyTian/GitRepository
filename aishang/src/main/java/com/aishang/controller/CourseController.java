package com.aishang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbCourse;
import com.aishang.service.CourseService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/manage/course")
public class CourseController {
	@Autowired
	private CourseService courseService;
	
	@RequestMapping("/list")
	@ResponseBody
	public EasyUIResult getCourseList(@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(defaultValue = "30") Integer rows) {
		// 查询课程列表
		EasyUIResult result = courseService.getCourseList(page, rows);

		return result;
	}
	@RequestMapping("/save")
	@ResponseBody
	public Result addCourse(TbCourse tbCourse){
		Result result = courseService.addCourse(tbCourse);
		return result;
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editCourse(TbCourse tbCourse){
		Result result = courseService.editCourse(tbCourse);
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Result deleteCourse(Long[] ids){
		Result result = courseService.deleteCourse(ids);
		return result;
	}

}
