package com.start4321.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping(value = "member")
	public String member(){
		return "Member/Member_Join";
	}
}
