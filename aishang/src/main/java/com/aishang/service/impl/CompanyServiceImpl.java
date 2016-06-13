package com.aishang.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.TbCompanyMapper;
import com.aishang.pojo.TbCompany;
import com.aishang.pojo.TbCompanyExample;
import com.aishang.service.CompanyService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.ExceptionUtil;
import com.aishang.utils.IDUtils;
import com.aishang.utils.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	private TbCompanyMapper tbCompanyMapper;

	@Override
	public EasyUIResult getCompanyList(Integer page, Integer rows) {
		TbCompanyExample example = new TbCompanyExample();
		// 设置分页
		PageHelper.startPage(page, rows);
		List<TbCompany> list = tbCompanyMapper.selectByExample(example);
		// 取分页信息
		PageInfo<TbCompany> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		EasyUIResult result = new EasyUIResult(total, list);
		return result;
	}

	@Override
	public Result addCompany(TbCompany tbCompany) {
		try {
			long companyId = IDUtils.genItemId();
			tbCompany.setId(companyId);
			Date date = new Date();
			tbCompany.setCreated(date);
			tbCompany.setUpdated(date);
			tbCompanyMapper.insert(tbCompany);

		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result editCompany(TbCompany tbCompany) {
		try {
			Date date = new Date();
			tbCompany.setUpdated(date);
			tbCompanyMapper.updateByPrimaryKeySelective(tbCompany);
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public Result deleteCompany(Long[] ids) {
		try {
			for (int i = 0; i < ids.length; i++) {
				tbCompanyMapper.deleteByPrimaryKey(ids[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return Result.build(500, ExceptionUtil.getStackTrace(e));
		}
		return Result.ok();
	}

	@Override
	public List<TbCompany> getCompanyList() {
		TbCompanyExample example = new TbCompanyExample();
		List<TbCompany> list = tbCompanyMapper.selectByExample(example);
		return list;
	}

	@Override
	public TbCompany getCompanyById(Long id) {
		TbCompany tbCompany = tbCompanyMapper.selectByPrimaryKey(id);
		return tbCompany;
	}

}
