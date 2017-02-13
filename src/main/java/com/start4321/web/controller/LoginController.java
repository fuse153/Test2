package com.start4321.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.start4321.web.model.Member;
import com.start4321.web.mybatis.memberManager;

@Controller
public class LoginController {
	
	private Member m;
	
	@RequestMapping(value = "M_login", method=RequestMethod.POST)
	
	public String memberLogin(@ModelAttribute Member mem, HttpServletRequest req ){
		Member member  = memberManager.getIdPw(mem,req);
		return "MainView";
	
	}
	
	@RequestMapping(value = "M_logout", method=RequestMethod.GET)
	public String memberLogin(HttpServletRequest r){
		
		WebUtils.setSessionAttribute(r , "USER_NAME",null);
		
		return "MainView";
		
	}
	
	
}
