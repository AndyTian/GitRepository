package com.aishang.service;

import java.util.List;

import com.aishang.pojo.TbActivity;
import com.aishang.pojo.TbSchoollife;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

public interface ActivityService {
	public EasyUIResult getActivityList(Integer page, Integer rows);
	
	public Result addActivity(TbActivity tbActivity);
	
	public Result editActivity(TbActivity tbActivity);
	
	public Result deleteActivity(Long[] ids);

	public TbActivity getActivityById(Long id);
	
	public List<TbActivity> getActivityList();
}
