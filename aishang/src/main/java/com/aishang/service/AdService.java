package com.aishang.service;

import java.util.List;

import com.aishang.pojo.TbAd;
import com.aishang.utils.EasyUIResult;
import com.aishang.utils.Result;

public interface AdService {

	EasyUIResult getAdList(Integer page, Integer rows);

	Result addAd(TbAd tbAd);

	Result editAd(TbAd tbAd);

	Result deleteAd(Long[] ids);
	
	List<TbAd> getAdList();

}
