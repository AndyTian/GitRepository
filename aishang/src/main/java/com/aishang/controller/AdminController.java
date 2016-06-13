package com.aishang.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aishang.pojo.User;
import com.aishang.service.UserService;

@Controller
public class AdminController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/admin")
	public String login(){
		return "admin/login";
	}
	
	@RequestMapping(value = "/admin/login", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> Login(@RequestParam String username, @RequestParam String password,
			HttpServletRequest request) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		HttpSession httpSession = request.getSession();

		User user = userService.findUserByName(username);
		if (user != null) {
			if (user.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))) {

				httpSession.setAttribute("user", user);
				resultMap.put("resultCode", 1);
				resultMap.put("msg", "登陆成功");
				resultMap.put("user", user);

			} else {
				resultMap.put("resultCode", 0);
				resultMap.put("msg", "密码错误!");
			}

		} else {
			resultMap.put("resultCode", 1);
			resultMap.put("msg", "用户不存在!");

		}
		return resultMap;

	}

}
