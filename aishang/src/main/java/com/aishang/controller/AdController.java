package com.aishang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbAd;
import com.aishang.service.AdService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/manage/ad")
public class AdController {
	@Autowired
	private AdService adService;
	
	@RequestMapping("/list")
	@ResponseBody
	public EasyUIResult getAdList(@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(defaultValue = "30") Integer rows) {
		// 查询课程列表
		EasyUIResult result = adService.getAdList(page, rows);
		return result;
	}
	
	@RequestMapping("/save")
	@ResponseBody
	public Result addAd(TbAd tbAd){
		Result result = adService.addAd(tbAd);
		return result;
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editAd(TbAd tbAd){
		Result result = adService.editAd(tbAd);
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Result deleteAd(Long[] ids){
		Result result = adService.deleteAd(ids);
		return result;
	}
}
