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

	// list请求之后追加 cl=，按照classify检索商品
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listGet(HttpServletRequest request) {
		String classifyID = "1";
		int currentPage = 0;
		if (request.getParameter("classify") != null) {
			classifyID = request.getParameter("classify");
		}
		if (request.getParameter("currentPage") != null
				&& !request.getParameter("currentPage").equals("")) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		ItemService service = new ItemService();
		Page page = new Page();
		page.setCurrentPage(currentPage);
		// TODO 有待优化
		List<Item> itemList = service.findItemsByClassifyID(classifyID, page);
		// List<Item> itemList = service.findAllItems(page);
		request.setAttribute("itemList", itemList);
		return "list";
	}

	// 商品详情显示
	@RequestMapping(value = "/itemDetail", method = RequestMethod.GET)
	public String itemDetail(HttpServletRequest request) {
		String iid = request.getParameter("iid");
		ItemService service = new ItemService();
		Item item = service.findItemByID(iid);
		request.setAttribute("item", item);
		return "itemDetail";
	}

}
