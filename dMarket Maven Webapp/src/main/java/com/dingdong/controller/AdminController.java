package com.dingdong.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dingdong.pojo.Admin;
import com.dingdong.service.AdminService;
import com.dingdong.service.UserService;

@Controller
public class AdminController {
	
	/**
	 * 管理员登录
	 * @return
	 */
	@RequestMapping(value="/adminLogin",method = RequestMethod.POST)
	public String adminLogin(Admin admin,HttpServletRequest request) {
		AdminService service = new AdminService();
		Admin adminLoged = service.adminLogin(admin.getName(), admin.getPassword());
		if(adminLoged == null){
			request.getSession().setAttribute("error", "密码错误，请重试");
			return "manage/login";
		}
		request.getSession().setAttribute("admin", adminLoged);
		return "manage/menu";
	}
	
	/**
	 * 管理员登录
	 * @return
	 */
	@RequestMapping(value="/adminLogin",method = RequestMethod.GET)
	public String adminLoginGet(Admin admin,HttpServletRequest request) {
		return "manage/login";
	}
	
	
	
	

	/**
	 * sub_users_list.jsp
	 * @return
	 */
	@RequestMapping(value="/sub_users_list",method = RequestMethod.GET)
	public String subUserList(HttpServletRequest request) {
		UserService service = new UserService();
		List userList = service.findAllUsers();
		request.getSession().setAttribute("userList", userList);
		return "manage/sub_users_list";
	}
	
	
	
}
