package com.aishang.service;

import java.util.List;
import java.util.Map;

import com.aishang.pojo.TbSchoollife;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

public interface SchoollifeService {
	public EasyUIResult getSchoollifeList(Integer page, Integer rows);
	
	public Result addSchoollife(TbSchoollife tbSchoollife);
	
	public Result editSchoollife(TbSchoollife tbSchoollife);
	
	public Result deleteSchoollife(Long[] ids);
	
	public TbSchoollife getSchoollifeById(Long id);
	
	public List<TbSchoollife> getSchoollifeList();
}
