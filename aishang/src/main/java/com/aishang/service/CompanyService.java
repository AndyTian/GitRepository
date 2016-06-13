package com.aishang.service;

import java.util.List;

import com.aishang.pojo.TbCompany;
import com.aishang.pojo.TbStudent;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

public interface CompanyService {

	EasyUIResult getCompanyList(Integer page, Integer rows);

	Result addCompany(TbCompany tbCompany);

	Result editCompany(TbCompany tbCompany);

	Result deleteCompany(Long[] ids);

	List<TbCompany> getCompanyList();
	
	TbCompany getCompanyById(Long id);

}
