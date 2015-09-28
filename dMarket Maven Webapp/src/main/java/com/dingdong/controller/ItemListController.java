package com.dingdong.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dingdong.pojo.Item;
import com.dingdong.pojo.Page;
import com.dingdong.service.ItemService;

@Controller
public class ItemListController {
	
	//list请求之后追加 cl=，按照classify检索商品
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String  listGet(HttpServletRequest request) {
		String classify = request.getParameter("cl");
		ItemService service = new ItemService();
		Page page  = new Page();
		//TODO 有关分页
		List<Item> itemList  = service.findAllItems(page);
		request.setAttribute("itemList", itemList);
		return "list";
	}
	
	

}
