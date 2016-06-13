package com.aishang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbAboutusMapper;
import com.aishang.pojo.TbAboutus;
import com.aishang.pojo.TbAboutusExample;
import com.aishang.service.AboutusService;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.Result;
@Service
public class AboutusServiceImpl implements AboutusService{
	@Autowired
	private TbAboutusMapper tbAboutusMapper;

	@Override
	public List<TbAboutus> getAboutus() {
		TbAboutusExample example = new TbAboutusExample();
		List<TbAboutus> list = tbAboutusMapper.selectByExample(example);
		return list;
	}

	@Override
	public Result editAboutus(TbAboutus aboutus) {
		try{
		tbAboutusMapper.updateByPrimaryKey(aboutus);
		}catch(Exception e){
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

}
