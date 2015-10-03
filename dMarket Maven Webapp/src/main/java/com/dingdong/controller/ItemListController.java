package com.dingdong.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dingdong.pojo.Item;
import com.dingdong.pojo.OrderDetail;
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
	public String itemDetail(@RequestParam String iid,
			HttpServletRequest request) {
		ItemService service = new ItemService();
		Item item = service.findItemByID(iid);
		request.setAttribute("item", item);
		return "itemDetail";
	}

	// 商品详情显示
	@RequestMapping(value = "/orderDetail", method = RequestMethod.GET)
	public String orderDetail(HttpServletRequest request) {
		return "orderDetail";
	}

	// 添加购物车信息到session
	@RequestMapping(value = "/addCart")
	public String addCart(@RequestParam String num,
						  @RequestParam String id, HttpServletRequest request) {
		int inum = Integer.parseInt(num);
		int iid = Integer.parseInt(id);
		HttpSession session = request.getSession();
		// cart 中分别存储了 商品id和商品数量
		Map<Integer, Integer> cart = (Map<Integer, Integer>) session
				.getAttribute("cart");
		if (cart == null) {
			cart = new HashMap();
			cart.put(iid, inum);
		} else if (cart.containsKey(iid)) {
			cart.put(iid, inum += cart.get(iid));
		} else
			cart.put(iid, inum);
		
		session.setAttribute("cart", cart);
		return "itemDetail?iid="+id;
	}
}
