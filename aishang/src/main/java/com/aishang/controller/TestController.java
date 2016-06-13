package com.aishang.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.mapper.TbAdMapper;
import com.aishang.pojo.TbAd;
import com.aishang.pojo.TbAdExample;
import com.aishang.utils.JsonUtils;

@Controller
public class TestController {
	@Autowired
	private TbAdMapper tbAdMapper;
	
	@RequestMapping("/Test")
	@ResponseBody
	public String Test(){
		TbAdExample example = new TbAdExample();
		List<TbAd> list = tbAdMapper.selectByExample(example);
		List<Map> resultList = new ArrayList<>();
		String getFilePath = "http://localhost:8080/";
		for(TbAd tbAd:list){
			Map map = new HashMap<>();
			map.put("pic", getFilePath+tbAd.getPic());
			resultList.add(map);
		}
		return JsonUtils.objectToJson(resultList);
	}

}
