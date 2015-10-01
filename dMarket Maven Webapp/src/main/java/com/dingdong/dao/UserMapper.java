package com.dingdong.dao;

import java.util.List;

import com.dingdong.pojo.User;

public interface UserMapper {

	public User login(String userName, String password);

	public int insert(User u);

	public int update(User u);

	public boolean delete(int id);

	public List<User> findAllUsers();
}