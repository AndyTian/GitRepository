package com.aishang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.TbCustomer;
import com.aishang.service.CustomerService;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

@Controller
@RequestMapping("/manage/customer")
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/list")
	@ResponseBody
	public EasyUIResult getCustomerList(@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(defaultValue = "30") Integer rows) {
		// 查询客户列表
		EasyUIResult result = customerService.getCustomerList(page, rows);

		return result;
	}
	
	@RequestMapping("/save")
	@ResponseBody
	public Result addCustomer(TbCustomer tbCustomer){
		Result result = customerService.addCustomer(tbCustomer);
		return result;
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public Result editCustomer(TbCustomer tbCustomer){
		Result result = customerService.editCustomer(tbCustomer);
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Result deleteCustomer(Long[] ids){
		Result result = customerService.deleteCustomer(ids);
		return result;
	}

}
