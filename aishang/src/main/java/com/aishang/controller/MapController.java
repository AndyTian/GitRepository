package com.aishang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbAboutus;
import com.aishang.pojo.TbMap;
import com.aishang.service.AboutusService;
import com.aishang.service.MapService;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/manage/map")
public class MapController {
	@Autowired
	private MapService mapService;
	
	@RequestMapping("/content")
	@ResponseBody
	public List<TbMap> getMap(){
		return mapService.getMap();
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editMap(TbMap map){
		System.out.println(map.getId());
		Result result =mapService.editMap(map);
		return result;
	}
}
