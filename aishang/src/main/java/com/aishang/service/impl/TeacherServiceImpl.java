package com.aishang.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbTeacherMapper;
import com.aishang.pojo.TbTeacher;
import com.aishang.pojo.TbTeacherExample;
import com.aishang.service.TeacherService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.IDUtils;
import com.aishang.utils.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class TeacherServiceImpl implements TeacherService{
	@Autowired
	private TbTeacherMapper tbTeacherMapper;

	@Override
	public EasyUIResult getTeacherList(Integer page, Integer rows) {
		TbTeacherExample example = new TbTeacherExample();
		// 设置分页
		PageHelper.startPage(page, rows);
		List<TbTeacher> list = tbTeacherMapper.selectByExample(example);
		// 取分页信息
		PageInfo<TbTeacher> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		EasyUIResult result = new EasyUIResult(total, list);
		return result;
	}

	@Override
	public Result addTeacher(TbTeacher tbTeacher) {
		try {
			long courseId = IDUtils.genItemId();
			tbTeacher.setId(courseId);
			Date date = new Date();
			tbTeacher.setCreated(date);
			tbTeacher.setUpdated(date);
			tbTeacherMapper.insert(tbTeacher);

		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result editTeacher(TbTeacher tbTeacher) {
		try {
			Date date = new Date();
			tbTeacher.setUpdated(date);
			tbTeacherMapper.updateByPrimaryKeySelective(tbTeacher);
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result deleteTeacher(Long[] ids) {
		try {
			for (int i = 0; i < ids.length; i++) {
				tbTeacherMapper.deleteByPrimaryKey(ids[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public List<TbTeacher> getTeacherList() {
		TbTeacherExample example = new TbTeacherExample();
		List<TbTeacher> list = tbTeacherMapper.selectByExample(example);
		return list;
	}

}
