package com.dingdong.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.dingdong.pojo.Order;

public interface OrderMapper {
	
	public int createOrder(Order Order);

	public boolean updateOrder(Order Order);

	public boolean deleteOrder(int id);

	// 花式查询
	public Order findOrderByID(int id);

	public List<Order> findOrdersByUserID(int userID);

	/**
	 * 
	 * @param userID
	 * @param startDate
	 *            查看startDate 到今日，该用户的所有订单
	 * @return
	 */
	public List<Order> findOrdersByUserIdAndDate(Map<String, String> map);

	// 管理员用
	public List<Order> findOrdersByDate(Date date);
}