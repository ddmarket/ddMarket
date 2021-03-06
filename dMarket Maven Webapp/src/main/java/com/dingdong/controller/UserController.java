package com.dingdong.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dingdong.pojo.Order;
import com.dingdong.pojo.Receiver;
import com.dingdong.pojo.User;
import com.dingdong.service.OrderService;
import com.dingdong.service.ReceiverService;
import com.dingdong.service.UserService;

@Controller
public class UserController {

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(HttpServletRequest request) {
		UserService service = new UserService();
		HttpSession httpSession = request.getSession();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		User user = service.login(userName, password);
		if (user == null) {
			request.setAttribute("info", "登录失败，请重试");
			return "status";
		}
		httpSession.setAttribute("user", user);
		return "main";
	}

	/**
	 * 防止异常GET请求
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGet(HttpServletRequest request) {
		return "login";
	}

	/**
	 * 注销
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutGet(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		request.setAttribute("info", "注销成功");
		return "status";
	}

	/**
	 * 注册
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPost(HttpServletRequest request, User user) {
		// TODO 注册验证码生产
		UserService userService = new UserService();
		Boolean isRegistSuccess = userService.register(user);
		if (isRegistSuccess) {
			request.setAttribute("info", "注册成功，请登录");
			return "status";
		} else {
			request.setAttribute("info", "注册失败，请重试");
			return "status";
		}
	}

	// Get请求进入register.jsp
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGet(HttpServletRequest request) {
		return "register";
	}

	// userUpdate
	@RequestMapping(value = "/userupdate", method = RequestMethod.POST)
	public String userUpdate(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			request.setAttribute("info", "访问异常，请重新登录");
			return "status";
		}

		UserService service = new UserService();
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		user.setTelephone(telephone);
		user.setEmail(email);
		if (!service.update(user)) {
			request.setAttribute("info", "修改信息失败，请重试");
			return "status";
		}
		return "sub_home_my";
	}

	// changePSW
	@RequestMapping(value = "/sub_home_pswChange", method = RequestMethod.POST)
	public String changePasswordPost(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			request.setAttribute("info", "访问异常，请<a href='login'>重新登录</a>");
			return "status";
		}
		UserService service = new UserService();
		user.setPassword(request.getParameter("password"));
		if (!service.update(user)) {
			request.setAttribute("info", "修改信密码失败，请重试");
			return "status";
		}
		return "sub_home_pswChange";
	}

	// 进入home
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homeGet(HttpServletRequest request) {
		return "home";

	}

	@RequestMapping(value = "/sub_home_my", method = RequestMethod.GET)
	public String subHomeMy(HttpServletRequest request) {
		return "sub_home_my";
	}

	// 个人订单
	@RequestMapping(value = "/sub_home_order", method = RequestMethod.GET)
	public String myOrder(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			request.setAttribute("info", "访问异常，请<a href='login'>重新登录</a>");
			return "status";
		}
		OrderService service = new OrderService();
		List<Order> orderList = service.findOrdersByUserID(user.getUser_id());
		session.setAttribute("orderList", orderList);
		return "sub_home_order";
	}

	@RequestMapping(value = "/sub_home_top", method = RequestMethod.GET)
	public String subHomeTop(HttpServletRequest request) {
		return "sub_home_top";
	}

	@RequestMapping(value = "/sub_home_left", method = RequestMethod.GET)
	public String subHomeLeft(HttpServletRequest request) {
		return "sub_home_left";
	}

	@RequestMapping(value = "/sub_home_pswChange", method = RequestMethod.GET)
	public String subHomePSW(HttpServletRequest request) {
		return "sub_home_pswChange";
	}

	@RequestMapping(value = "/sub_home_collection", method = RequestMethod.GET)
	public String subHomeCollection(HttpServletRequest request) {
		return "sub_home_collection";
	}

	@RequestMapping(value = "/sub_home_receiver", method = RequestMethod.GET)
	public String subHomeReceiver(HttpServletRequest request) {
		ReceiverService service = new ReceiverService();
		User user = (User) request.getSession().getAttribute("user");
		if (user == null) {
			return "login";
		}
		List<Receiver> receiverList = service.findReceiverByUserID(user
				.getUser_id());
		request.getSession().setAttribute("receiverList", receiverList);
		return "sub_home_receiver";
	}

	@RequestMapping(value = "/addReceiverPost")
	public String addReceiverPost(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "login";
		}
		ReceiverService service = new ReceiverService();
		Receiver receiver = new Receiver();
		receiver.setUser_id(Integer.parseInt(request.getParameter("uid")));
		receiver.setAddress(request.getParameter("place"));
		receiver.setTelephone(request.getParameter("tel"));
		receiver.setName(request.getParameter("name"));
		service.addReceiver(receiver);
		return "status";
	}

}
