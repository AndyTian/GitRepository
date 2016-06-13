package com.aishang.service;

import java.util.List;

import com.aishang.pojo.TbAboutus;
import com.aishang.pojo.TbMap;
import com.aishang.utils.Result;

public interface MapService {
	public List<TbMap> getMap();

	public Result editMap(TbMap map);
}
