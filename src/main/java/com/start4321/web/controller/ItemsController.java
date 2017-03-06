package com.start4321.web.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.start4321.web.model.item;
import com.start4321.web.mybatis.itemManager;

@Controller
public class ItemsController {
	
	@RequestMapping(value = "/item_purchase", method=RequestMethod.POST)
	public String items_purchase(item items){
	
		itemManager.item_insert(items);
		return "MainView";
	}

	@RequestMapping(value = "/item_history", method=RequestMethod.GET)
	public ModelAndView item_history(HttpServletRequest req , item items) throws SQLException{
		String email = (String)WebUtils.getSessionAttribute(req , "USER_NAME");
		ModelAndView mv = new ModelAndView("mypage");
		mv.addObject("item", itemManager.getList(email));
		return mv;
	}
	
	
}
