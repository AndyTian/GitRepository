package com.aishang.service.impl;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbActivityMapper;
import com.aishang.pojo.TbActivity;
import com.aishang.pojo.TbActivityExample;
import com.aishang.service.ActivityService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.IDUtils;
import com.aishang.utils.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class ActivityServiceImpl implements ActivityService{
	@Autowired
	private TbActivityMapper tbActivityMapper;

	@Override
	public EasyUIResult getActivityList(Integer page, Integer rows) {
		TbActivityExample example = new TbActivityExample();
		// 设置分页
		PageHelper.startPage(page, rows);
		List<TbActivity> list = tbActivityMapper.selectByExample(example);
		// 取分页信息
		PageInfo<TbActivity> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		EasyUIResult result = new EasyUIResult(total, list);
		return result;
	}

	@Override
	public Result addActivity(TbActivity tbActivity) {
		try {
			long courseId = IDUtils.genItemId();
			tbActivity.setId(courseId);
			Date date = new Date();
			tbActivity.setCreated(date);
			tbActivity.setUpdated(date);
			tbActivityMapper.insert(tbActivity);

		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result editActivity(TbActivity tbActivity) {
		try {
			Date date = new Date();
			tbActivity.setUpdated(date);
			tbActivityMapper.updateByPrimaryKeySelective(tbActivity);
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result deleteActivity(Long[] ids) {
		try {
			for (int i = 0; i < ids.length; i++) {
				tbActivityMapper.deleteByPrimaryKey(ids[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public TbActivity getActivityById(Long id) {
		TbActivity tbActivity = tbActivityMapper.selectByPrimaryKey(id);
		return tbActivity;
	}

	@Override
	public List<TbActivity> getActivityList() {
		TbActivityExample example = new TbActivityExample();
		List<TbActivity> list = tbActivityMapper.selectByExample(example);
		return list;
	}

}
