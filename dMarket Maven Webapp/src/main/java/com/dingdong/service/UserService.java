package com.dingdong.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dingdong.dao.AdminMapper;
import com.dingdong.dao.UserMapper;
import com.dingdong.daoImp.AdminMapperImp;
import com.dingdong.daoImp.UserMapperlmp;
import com.dingdong.pojo.User;

public class UserService {
	/**
	 * 登录，验证密码
	 * @param name
	 * @param psw
	 * @return User
	 */
	public User login(String userName,String password){
		UserMapper userMapperlmp = new UserMapperlmp();
		Map<String,String> map = new HashMap<String,String>();
		map.put("userName", userName);
		map.put("password", password);
		User user = userMapperlmp.login(userName,password);
		return user;
	}
	/**
	 *注册
	 * @param u
	 * @return
	 */
	public boolean register(User u){
		UserMapper userMapperlmp = new UserMapperlmp();
		int result = userMapperlmp.insert(u);
		if (result != 0) {
			return true;
		}
		return false;
	}
	/**
	 * 更新用户信息
	 * @param u
	 * @return
	 */
	public boolean update(User u){
		UserMapper userMapperlmp = new UserMapperlmp();
		int result = userMapperlmp.update(u);
		if (result != 0) {
			return true;
		}
		return false;
	}
	
	
	public List findAllUsers(){
		List userList = null;
		UserMapper um = new UserMapperlmp();
		userList = um.findAllUsers();
		return userList;
	}
	

}
