package com.miniguru.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.miniguru.dao.HomepageDao;
import com.miniguru.entity.homepage;

@Controller
public class HomePageController {
	
	@Autowired
	HomepageDao homepageDao;

	@RequestMapping("/home")
	public String HomePage(Model m){
		List<homepage> list = this.homepageDao.getAll();
		return "home";
	}
	
	@RequestMapping(value="/saveContacts", method=RequestMethod.POST)
	public String saveContacts(@ModelAttribute("contacts") homepage h,Model m) {
		System.out.print(h);
		this.homepageDao.saveContacts(h);
		return "home";
	}
}
