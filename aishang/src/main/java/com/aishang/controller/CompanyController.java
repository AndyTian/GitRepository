package com.aishang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbCompany;
import com.aishang.service.CompanyService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/manage/company")
public class CompanyController {
	@Autowired
	private CompanyService companyService;

	@RequestMapping("/list")
	@ResponseBody
	public EasyUIResult getCompanyList(@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(defaultValue = "30") Integer rows) {
		// 查询课程列表
		EasyUIResult result = companyService.getCompanyList(page, rows);

		return result;
	}
	@RequestMapping("/save")
	@ResponseBody
	public Result addCompany(TbCompany tbCompany){
		Result result = companyService.addCompany(tbCompany);
		return result;
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editCompany(TbCompany tbCompany){
		Result result = companyService.editCompany(tbCompany);
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Result deleteCompany(Long[] ids){
		Result result = companyService.deleteCompany(ids);
		return result;
	}
}
