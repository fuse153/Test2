package com.start4321.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Item_PurchaseController {
	
	
	@RequestMapping(value = "/item_purchase", method = RequestMethod.GET)
	public String ManshopController(){
		return "item_purchase/item_purchase";
	}
}
