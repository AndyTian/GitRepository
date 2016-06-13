package com.aishang.service;

import java.util.List;

import com.aishang.pojo.TbCourse;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

public interface CourseService {
	public EasyUIResult getCourseList(Integer page, Integer rows);
	
	public Result addCourse(TbCourse tbCourse);
	
	public Result editCourse(TbCourse tbCourse);
	
	public Result deleteCourse(Long[] ids);

	public List<TbCourse> getCourseList();

	public TbCourse getCourseById(Long id);
}
