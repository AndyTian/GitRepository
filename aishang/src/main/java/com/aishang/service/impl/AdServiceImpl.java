package com.aishang.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbAdMapper;
import com.aishang.pojo.TbAd;
import com.aishang.pojo.TbAdExample;
import com.aishang.service.AdService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.IDUtils;
import com.aishang.utils.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class AdServiceImpl implements AdService{
	@Autowired
	private TbAdMapper tbAdMapper;

	@Override
	public EasyUIResult getAdList(Integer page, Integer rows) {
		TbAdExample example = new TbAdExample();
		//设置分页
		PageHelper.startPage(page, rows);
		List<TbAd> list = tbAdMapper.selectByExample(example);
		PageInfo<TbAd> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		EasyUIResult result = new EasyUIResult(total, list);
		return result;
	}

	@Override
	public Result addAd(TbAd tbAd) {
		try{
			long adId = IDUtils.genItemId();
			tbAd.setId(adId);
			Date date = new Date();
			tbAd.setCreated(date);
			tbAd.setUpdated(date);
			tbAdMapper.insert(tbAd);
		}catch(Exception e){
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result editAd(TbAd tbAd) {
		try{
			Date date = new Date();
			tbAd.setUpdated(date);
			tbAdMapper.updateByPrimaryKeySelective(tbAd);
		}catch(Exception e){
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result deleteAd(Long[] ids) {
		try{
			for(int i=0;i<ids.length;i++){
				tbAdMapper.deleteByPrimaryKey(ids[i]);
			}
		}catch(Exception e){
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public List<TbAd> getAdList() {
		TbAdExample example = new TbAdExample();
		List<TbAd> list = tbAdMapper.selectByExample(example);
		return list;
	}

}
