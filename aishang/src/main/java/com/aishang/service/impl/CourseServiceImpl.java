package com.aishang.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbCourseMapper;
import com.aishang.pojo.TbCourse;
import com.aishang.pojo.TbCourseExample;
import com.aishang.service.CourseService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.IDUtils;
import com.aishang.utils.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class CourseServiceImpl implements CourseService{
	@Autowired
	private TbCourseMapper tbCourseMapper;

	@Override
	public EasyUIResult getCourseList(Integer page, Integer rows) {
		TbCourseExample example = new TbCourseExample();
		// 设置分页
		PageHelper.startPage(page, rows);
		List<TbCourse> list = tbCourseMapper.selectByExample(example);
		// 取分页信息
		PageInfo<TbCourse> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		EasyUIResult result = new EasyUIResult(total, list);
		return result;
	}

	@Override
	public Result addCourse(TbCourse tbCourse) {
		try {
			long courseId = IDUtils.genItemId();
			tbCourse.setId(courseId);
			Date date = new Date();
			tbCourse.setCreated(date);
			tbCourse.setUpdated(date);
			tbCourseMapper.insert(tbCourse);

		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result editCourse(TbCourse tbCourse) {
		try {
			Date date = new Date();
			tbCourse.setUpdated(date);
			tbCourseMapper.updateByPrimaryKeySelective(tbCourse);
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result deleteCourse(Long[] ids) {
		try {
			for (int i = 0; i < ids.length; i++) {
				tbCourseMapper.deleteByPrimaryKey(ids[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public List<TbCourse> getCourseList() {
		TbCourseExample example = new TbCourseExample();
		List<TbCourse> list = tbCourseMapper.selectByExample(example);
		return list;
	}

	@Override
	public TbCourse getCourseById(Long id) {
		TbCourse tbCourse = tbCourseMapper.selectByPrimaryKey(id);
		return tbCourse;
	}


}
