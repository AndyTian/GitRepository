package com.aishang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbMapMapper;
import com.aishang.pojo.TbMap;
import com.aishang.pojo.TbMapExample;
import com.aishang.service.MapService;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.Result;
@Service
public class MapServiceImpl implements MapService{
	@Autowired
	private TbMapMapper tbMapMapper;

	@Override
	public List<TbMap> getMap() {
		TbMapExample example = new TbMapExample();
		List<TbMap> list = tbMapMapper.selectByExample(example);
		return list;
	}

	@Override
	public Result editMap(TbMap map) {
		try{
			tbMapMapper.updateByPrimaryKey(map);
			}catch(Exception e){
				e.printStackTrace();
				return Result.build(500, ExceptionUtil.getStackTrace(e));
			}
			return Result.ok();
	}

}
