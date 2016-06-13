package com.aishang.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbSchoolpicMapper;
import com.aishang.pojo.TbSchoolpic;
import com.aishang.pojo.TbSchoolpicExample;
import com.aishang.service.SchoolpicService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.IDUtils;
import com.aishang.utils.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class SchoolpicServiceImpl implements SchoolpicService{
	@Autowired
	private TbSchoolpicMapper tbSchoolpicMapper;

	@Override
	public EasyUIResult getSchoolpicList(Integer page, Integer rows) {
		TbSchoolpicExample example = new TbSchoolpicExample();
		// 设置分页
		PageHelper.startPage(page, rows);
		List<TbSchoolpic> list = tbSchoolpicMapper.selectByExample(example);
		// 取分页信息
		PageInfo<TbSchoolpic> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		EasyUIResult result = new EasyUIResult(total, list);
		return result;
	}

	@Override
	public Result addSchoolpic(TbSchoolpic tbSchoolpic) {
		try {
			long courseId = IDUtils.genItemId();
			tbSchoolpic.setId(courseId);
			Date date = new Date();
			tbSchoolpic.setCreated(date);
			tbSchoolpic.setUpdated(date);
			tbSchoolpicMapper.insert(tbSchoolpic);

		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result editSchoolpic(TbSchoolpic tbSchoolpic) {
		try {
			Date date = new Date();
			tbSchoolpic.setUpdated(date);
			tbSchoolpicMapper.updateByPrimaryKeySelective(tbSchoolpic);
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result deleteSchoolpic(Long[] ids) {
		try {
			for (int i = 0; i < ids.length; i++) {
				tbSchoolpicMapper.deleteByPrimaryKey(ids[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public List<TbSchoolpic> getSchoolPicList() {
		TbSchoolpicExample example = new TbSchoolpicExample();
		List<TbSchoolpic> list = tbSchoolpicMapper.selectByExample(example);
		return list;
	}

}
