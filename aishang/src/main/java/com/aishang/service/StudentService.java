package com.aishang.service;

import java.util.List;

import com.aishang.pojo.TbStudent;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

public interface StudentService {
	public EasyUIResult getStudentList(Integer page, Integer rows);
	
	public Result addStudent(TbStudent tbStudent);
	
	public Result editStudent(TbStudent tbStudent);
	
	public Result deleteStudent(Long[] ids);
	
	public List<TbStudent> getStudentList();

	public TbStudent getStudentById(Long id);
}
