package com.aishang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbStudent;
import com.aishang.service.StudentService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/manage/student")
public class StudentController {
	@Autowired
	private StudentService studentService;

	@RequestMapping("/list")
	@ResponseBody
	public EasyUIResult getStudentList(@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(defaultValue = "30") Integer rows) {
		// 查询课程列表
		EasyUIResult result = studentService.getStudentList(page, rows);

		return result;
	}
	@RequestMapping("/save")
	@ResponseBody
	public Result addStudent(TbStudent tbStudent){
		Result result = studentService.addStudent(tbStudent);
		return result;
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editStudent(TbStudent tbStudent){
		Result result = studentService.editStudent(tbStudent);
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Result deleteStudent(Long[] ids){
		Result result = studentService.deleteStudent(ids);
		return result;
	}

}
