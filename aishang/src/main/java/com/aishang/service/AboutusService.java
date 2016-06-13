package com.aishang.service;

import java.util.List;

import com.aishang.pojo.TbAboutus;
import com.aishang.utils.Result;

public interface AboutusService {
	public List<TbAboutus> getAboutus();
	
	public Result editAboutus(TbAboutus aboutus);
}
