package com.dingdong.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.dingdong.pojo.Admin;
import com.dingdong.pojo.Classify;
import com.dingdong.pojo.Item;
import com.dingdong.pojo.Page;
import com.dingdong.service.AdminService;
import com.dingdong.service.ClassifyService;
import com.dingdong.service.ItemService;
import com.dingdong.service.UserService;

@Controller
public class AdminController {

	/**
	 * 管理员登录
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
	public String adminLogin(Admin admin, HttpServletRequest request) {
		AdminService service = new AdminService();
		Admin adminLoged = service.adminLogin(admin.getName(),
				admin.getPassword());
		if (adminLoged == null) {
			request.getSession().setAttribute("error", "密码错误，请重试");
			return "manage/login";
		}
		request.getSession().setAttribute("admin", adminLoged);
		return "manage/menu";
	}

	/**
	 * 管理员登录
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String adminLoginGet(Admin admin, HttpServletRequest request) {
		return "manage/login";
	}

	/**
	 * sub_users_list.jsp
	 * 
	 * @return
	 */
	@RequestMapping(value = "/sub_users_list", method = RequestMethod.GET)
	public String subUserList(HttpServletRequest request) {
		UserService service = new UserService();
		List userList = service.findAllUsers();
		request.getSession().setAttribute("userList", userList);
		return "manage/sub_users_list";
	}

	@RequestMapping(value = "/sub_items_list", method = RequestMethod.GET)
	public String subItemsList(HttpServletRequest request) {
		ItemService service = new ItemService();
		Page page = new Page();
		page.setPageNumber(Integer.MAX_VALUE);
		List itemList = service.findAllItems(page);
		request.getSession().setAttribute("itemList", itemList);
		return "manage/sub_items_list";
	}

	// TODO TODO
	// 删除用户
	@RequestMapping(value = "/deleteUser/{uid}", method = RequestMethod.GET)
	public void deleteUser(@PathVariable("uid") String uid) {
		UserService service = new UserService();
		// service.delete(uid);
		// TODO Error 重定向次数太多
	}

	// 跳转到添加页面
	@RequestMapping(value = "/sub_item_add", method = RequestMethod.GET)
	public String subItemAdd(HttpServletRequest request) {
		ClassifyService service = new ClassifyService();
		List<Classify> classifyList = service.findAll();
		// System.out.println(classifyList.get(0).getName());
		request.setAttribute("classifyList", classifyList);
		return "manage/sub_item_add";
	}

	// 增加商品Post
	@RequestMapping(value = "/addItem", method = RequestMethod.POST)
	public String addItemPost(Item item, HttpServletRequest request) {
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String area = request.getParameter("area");
		item.setRepertory(province + "-" + city + "-" + area);
		ItemService service = new ItemService();
		service.addItem(item);
		// service.delete(uid);
		return "manage/sub_item_add";
	}

}
