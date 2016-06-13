package com.aishang.service;

import java.util.List;

import com.aishang.pojo.TbSchoolpic;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

public interface SchoolpicService {
	public EasyUIResult getSchoolpicList(Integer page, Integer rows);
	
	public Result addSchoolpic(TbSchoolpic tbSchoolpic);
	
	public Result editSchoolpic(TbSchoolpic tbSchoolpic);
	
	public Result deleteSchoolpic(Long[] ids);

	public List<TbSchoolpic> getSchoolPicList();
}
