package com.aishang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbActivity;
import com.aishang.service.ActivityService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;
@Controller
@RequestMapping("/manage/activity")
public class ActivityController{
	@Autowired
	private ActivityService activityService;
	
	@RequestMapping("/list")
	@ResponseBody
	public EasyUIResult getActivityList(@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(defaultValue = "30") Integer rows) {
		// 查询课程列表
		EasyUIResult result = activityService.getActivityList(page, rows);

		return result;
	}
	@RequestMapping("/save")
	@ResponseBody
	public Result addActivity(TbActivity tbActivity){
		Result result = activityService.addActivity(tbActivity);
		return result;
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editActivity(TbActivity tbActivity){
		Result result = activityService.editActivity(tbActivity);
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Result deleteActivity(Long[] ids){
		Result result = activityService.deleteActivity(ids);
		return result;
	}

}
