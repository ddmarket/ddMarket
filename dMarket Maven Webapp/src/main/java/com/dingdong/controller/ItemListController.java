package com.dingdong.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.dingdong.pojo.Item;
import com.dingdong.pojo.Order;
import com.dingdong.pojo.OrderDetail;
import com.dingdong.pojo.Page;
import com.dingdong.pojo.Receiver;
import com.dingdong.pojo.User;
import com.dingdong.service.ItemService;
import com.dingdong.service.OrderDetailService;
import com.dingdong.service.OrderService;
import com.dingdong.service.ReceiverService;

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

	// 商品订单结算GET
	@RequestMapping(value = "/submitOrder", method = RequestMethod.GET)
	public String submitOrder(HttpServletRequest request) {
		return "submitOrder";
	}

	// 添加购物车信息到session
	@RequestMapping(value = "/addCart")
	public String addCart(@RequestParam String num, @RequestParam String id,
			HttpServletRequest request) {
		int inum = Integer.parseInt(num);
		int iid = Integer.parseInt(id);
		HttpSession session = request.getSession();
		// cart 中分别存储了 商品id和商品数量
		Map<Item, Integer> cart = (Map<Item, Integer>) session.getAttribute("cart");

		Item item = new ItemService().findItemByID(iid);
		if (cart == null) {
			cart = new HashMap();
			cart.put(item, inum);
		}  else{
			for(Item i : cart.keySet()){
				if(i.getItem_id() == iid){
					cart.put(i, inum+cart.get(i));
					session.setAttribute("cart", cart);
					return "redirect:itemDetail?iid=" + iid;
				}	
			}
			cart.put(item, inum);
		}

		session.setAttribute("cart", cart);
		return "redirect:itemDetail?iid=" + iid;
	}

	// 添加购物车信息到session
	@RequestMapping(value = "/gotoCart")
	public String myCart(HttpServletRequest request) {
		// TODO 使用过滤器完成此项工作
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "login";
		}
		ReceiverService receiverService = new ReceiverService();
		ArrayList<Receiver> receiverList = new ArrayList<Receiver>();
		receiverService.findReceiverByUserID(user.getUser_id());
		session.setAttribute("receiverList", receiverList);
		
		@SuppressWarnings("unchecked")
		Map<Item, Integer> cart = (Map<Item, Integer>) session
				.getAttribute("cart");
		if (cart == null) {
			return "list";
		}
		ItemService itemService = new ItemService();
		OrderService orderService = new OrderService();

		Order order = new Order();
		order.setExpressinfo("订单已接受");
		order.setOrderstates(1);
		order.setOrdertime(new Date());
		// TODO 收货人已写死
		order.setReceiver_id(1);
		order.setUser_id(user.getUser_id());
		order.setTotalamount(0l);
		orderService.createOrder(order);
		// 为每一个 key value 创建订单
		for (Item item : cart.keySet()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setItem_id(item.getItem_id());
			orderDetail.setOrder_id(order.getOrder_id());
			// TODO 还有个收货人 ,暂时写死由1号收

			// 数量小计
			int num = cart.get(item);
			orderDetail.setAccount(num);
			orderDetail.setAmount(num*item.getPrice());
			// 商品数量小计，暂空
			// orderDetail.setAmount(amount);
			new OrderDetailService().createOrderDetail(orderDetail);
			System.out.println("新增订单详表记录");
		}

		return "submitOrder";
	}

}
