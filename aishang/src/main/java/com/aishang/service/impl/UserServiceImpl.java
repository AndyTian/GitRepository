package com.aishang.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aishang.mapper.UserMapper;
import com.aishang.pojo.User;
import com.aishang.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;

	@Override
	public User findUserByName(String username) {
		return userMapper.selectByPrimaryKey(username);
	}

}
