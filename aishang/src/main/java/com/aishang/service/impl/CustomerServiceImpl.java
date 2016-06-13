package com.aishang.service.impl;

import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbCustomerMapper;
import com.aishang.pojo.TbCustomer;
import com.aishang.pojo.TbCustomerExample;
import com.aishang.service.CustomerService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.IDUtils;
import com.aishang.utils.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private TbCustomerMapper tbCustomerMapper;

	@Override
	public EasyUIResult getCustomerList(Integer page, Integer rows) {
		TbCustomerExample example = new TbCustomerExample();
		// 设置分页
		PageHelper.startPage(page, rows);
		List<TbCustomer> list = tbCustomerMapper.selectByExample(example);
		// 取分页信息
		PageInfo<TbCustomer> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		EasyUIResult result = new EasyUIResult(total, list);
		return result;
	}

	@Override
	public Result saveCustomer(TbCustomer tbCustomer) {
		try {
			long customerId = IDUtils.genItemId();
			tbCustomer.setId(customerId);
			Date date = new Date();
			tbCustomer.setCreated(date);
			tbCustomerMapper.insert(tbCustomer);

		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result addCustomer(TbCustomer tbCustomer) {
		try {
			long courseId = IDUtils.genItemId();
			tbCustomer.setId(courseId);
			Date date = new Date();
			tbCustomer.setCreated(date);
			tbCustomerMapper.insert(tbCustomer);

		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result editCustomer(TbCustomer tbCustomer) {
		try {
			Date date = new Date();
			tbCustomerMapper.updateByPrimaryKeySelective(tbCustomer);
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result deleteCustomer(Long[] ids) {
		try {
			for (int i = 0; i < ids.length; i++) {
				tbCustomerMapper.deleteByPrimaryKey(ids[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

}
