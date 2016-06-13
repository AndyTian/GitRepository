package com.aishang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	@RequestMapping("/manage")
	public String manager(){
		return "admin/index";
	}
	@RequestMapping("/manage/{page}")
	public String showManagePage(@PathVariable String page) {
		return "admin/"+page;
	}
	@RequestMapping("/")
	public String index(){
		return "index";
	}
	@RequestMapping("/{page}")
	public String showPage(@PathVariable String page) {
		return page;
	}

}
