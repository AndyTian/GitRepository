package com.aishang.service;

import com.aishang.pojo.TbCustomer;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

public interface CustomerService {
	public EasyUIResult getCustomerList(Integer page, Integer rows);

	public Result saveCustomer(TbCustomer tbCustomer);

	public Result addCustomer(TbCustomer tbCustomer);

	public Result editCustomer(TbCustomer tbCustomer);

	public Result deleteCustomer(Long[] ids);

}
