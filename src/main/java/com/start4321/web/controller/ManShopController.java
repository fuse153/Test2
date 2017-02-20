package com.start4321.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManShopController {
	
	
	@RequestMapping(value = "/Man_shop", method = RequestMethod.GET)
	public String ManshopController(){
		return "man_shop/man_shop1";
	}
}
