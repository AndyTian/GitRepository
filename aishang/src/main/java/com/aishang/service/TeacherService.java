package com.aishang.service;

import java.util.List;

import com.aishang.pojo.TbTeacher;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

public interface TeacherService {
	public EasyUIResult getTeacherList(Integer page, Integer rows);
	
	public Result addTeacher(TbTeacher tbTeacher);
	
	public Result editTeacher(TbTeacher tbTeacher);
	
	public Result deleteTeacher(Long[] ids);
	
	public List<TbTeacher> getTeacherList();
}
