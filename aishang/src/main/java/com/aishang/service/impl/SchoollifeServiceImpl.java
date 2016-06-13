package com.aishang.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbSchoollifeMapper;
import com.aishang.pojo.TbSchoollife;
import com.aishang.pojo.TbSchoollifeExample;
import com.aishang.service.SchoollifeService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.IDUtils;
import com.aishang.utils.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class SchoollifeServiceImpl implements SchoollifeService{
	@Autowired
	private TbSchoollifeMapper tbSchoollifeMapper;

	@Override
	public EasyUIResult getSchoollifeList(Integer page, Integer rows) {
		TbSchoollifeExample example = new TbSchoollifeExample();
		// 设置分页
		PageHelper.startPage(page, rows);
		List<TbSchoollife> list = tbSchoollifeMapper.selectByExample(example);
		// 取分页信息
		PageInfo<TbSchoollife> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		EasyUIResult result = new EasyUIResult(total, list);
		return result;
	}

	@Override
	public Result addSchoollife(TbSchoollife tbSchoollife) {
		try {
			long courseId = IDUtils.genItemId();
			tbSchoollife.setId(courseId);
			Date date = new Date();
			tbSchoollife.setCreated(date);
			tbSchoollife.setUpdated(date);
			tbSchoollifeMapper.insert(tbSchoollife);

		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result editSchoollife(TbSchoollife tbSchoollife) {
		try {
			Date date = new Date();
			tbSchoollife.setUpdated(date);
			tbSchoollifeMapper.updateByPrimaryKeySelective(tbSchoollife);
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result deleteSchoollife(Long[] ids) {
		try {
			for (int i = 0; i < ids.length; i++) {
				tbSchoollifeMapper.deleteByPrimaryKey(ids[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public TbSchoollife getSchoollifeById(Long id) {
		TbSchoollife schoollife = tbSchoollifeMapper.selectByPrimaryKey(id);
		return schoollife;
	}

	@Override
	public List<TbSchoollife> getSchoollifeList() {
		TbSchoollifeExample example = new TbSchoollifeExample();
		List<TbSchoollife> list = tbSchoollifeMapper.selectByExample(example);
		return list;
	}


}
