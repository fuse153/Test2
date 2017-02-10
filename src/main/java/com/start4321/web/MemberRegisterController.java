package com.start4321.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.start4321.web.model.Member;
import com.start4321.web.mybatis.memberManager;

@Controller
public class MemberRegisterController {
	
	
	@RequestMapping(value = "/M_register", method = RequestMethod.POST)
	public String Member_Register(Member res){
		
		// 회원 가입
		memberManager.insert(res);
		
		return "MainView";
	}
}
