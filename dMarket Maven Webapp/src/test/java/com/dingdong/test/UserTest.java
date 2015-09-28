package com.dingdong.test;

import org.junit.Test;

import com.dingdong.pojo.User;
import com.dingdong.service.UserService;

public class UserTest {

	@Test
	public void insertTest() {
		User user = new User();
		user.setCredit(100);
		user.setEmail("maven@foxmail.com");
		user.setName("maven");
		user.setPassword("maven");
		user.setStatus(3);
		user.setTelephone("137000000");
		UserService userService = new UserService();
		userService.register(user);
	}
	
	@Test
	public void loginTest() {
		String name = "yinbro";
		String psw =  "yinbro";
		UserService userService = new UserService();
		User result = userService.login(name, psw);
		System.out.println(result);
	}
	@Test
	public void updateTest(){
		User user = new User();
		user.setUser_id(2);
		user.setCredit(100);
		user.setEmail("865618222@qq.com");
		user.setName("ahafdsfs");
		user.setPassword("123456");
		user.setStatus(3);
		user.setTelephone("3333333");
		UserService userService = new UserService();
		userService.update(user);
	}
}
