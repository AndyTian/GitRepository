package com.aishang.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbStudentMapper;
import com.aishang.pojo.TbStudent;
import com.aishang.pojo.TbStudentExample;
import com.aishang.service.StudentService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.IDUtils;
import com.aishang.utils.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
	private TbStudentMapper tbStudentMapper;

	@Override
	public EasyUIResult getStudentList(Integer page, Integer rows) {
		TbStudentExample example = new TbStudentExample();
		// 设置分页
		PageHelper.startPage(page, rows);
		List<TbStudent> list = tbStudentMapper.selectByExample(example);
		// 取分页信息
		PageInfo<TbStudent> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		EasyUIResult result = new EasyUIResult(total, list);
		return result;
	}

	@Override
	public Result addStudent(TbStudent tbStudent) {
		try {
			long studentId = IDUtils.genItemId();
			tbStudent.setId(studentId);
			Date date = new Date();
			tbStudent.setCreated(date);
			tbStudent.setUpdated(date);
			tbStudentMapper.insert(tbStudent);

		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result editStudent(TbStudent tbStudent) {
		try {
			Date date = new Date();
			tbStudent.setUpdated(date);
			tbStudentMapper.updateByPrimaryKeySelective(tbStudent);
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result deleteStudent(Long[] ids) {
		try {
			for (int i = 0; i < ids.length; i++) {
				tbStudentMapper.deleteByPrimaryKey(ids[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public List<TbStudent> getStudentList() {
		TbStudentExample example = new TbStudentExample();
		List<TbStudent> list = tbStudentMapper.selectByExample(example);
		return list;
	}

	@Override
	public TbStudent getStudentById(Long id) {
		TbStudent tbStudent = tbStudentMapper.selectByPrimaryKey(id);
		return tbStudent;
	}
	

}
