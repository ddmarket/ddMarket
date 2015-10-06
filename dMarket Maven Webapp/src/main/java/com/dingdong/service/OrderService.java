package com.dingdong.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dingdong.daoImp.OrderMapperlmp;
import com.dingdong.pojo.Order;

public class OrderService {

	/**
	 * 创建订单
	 * 
	 * @param Order
	 * @return
	 */
	public int createOrder(Order Order) {
		OrderMapperlmp orderMapperlmp = new OrderMapperlmp();
		return orderMapperlmp.createOrder(Order);
	}

	/**
	 * 根据订单id更新订单信息
	 * 
	 * @param Order
	 * @return
	 */
	public boolean updateOrder(Order Order) {
		OrderMapperlmp orderMapperlmp = new OrderMapperlmp();
		return orderMapperlmp.updateOrder(Order);
	}

	/**
	 * 根据订单id删除订单
	 * 
	 * @param id
	 * @return
	 */
	public boolean deleteOrder(String id) {
		int oid = Integer.parseInt(id);
		OrderMapperlmp orderMapperlmp = new OrderMapperlmp();
		return orderMapperlmp.deleteOrder(oid);
	}

	/**
	 * 根据订单id号查找订单
	 * 
	 * @param id
	 * @return
	 */
	public Order findOrderByID(String id) {
		OrderMapperlmp orderMapperlmp = new OrderMapperlmp();
		return orderMapperlmp.findOrderByID(Integer.parseInt(id));
	}

	/**
	 * 根据用户id查找订单信息
	 * 
	 * @param integer
	 * @return
	 */
	public List<Order> findOrdersByUserID(Integer integer) {
		OrderMapperlmp orderMapperlmp = new OrderMapperlmp();
		System.out.println("findOderByUserID service 参数：" + integer);

		return orderMapperlmp.findOrdersByUserID(integer);
	}

	/**
	 * 
	 * @param userID
	 * @param startDate
	 *            查看startDate 到今日，该用户的所有订单
	 * @return
	 */
	public List<Order> findOrdersByUserIdAndDate(String userID, String startDate) {
		OrderMapperlmp orderMapperlmp = new OrderMapperlmp();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userID", userID);
		map.put("startDate", startDate);
		return orderMapperlmp.findOrdersByUserIdAndDate(map);
	}

	// 管理员用
	public List<Order> findOrdersByDate(Date date) {
		return null;
	}

	public List finAllOrders() {
		OrderMapperlmp orderMapperlmp = new OrderMapperlmp();
		List<Order> orderList = orderMapperlmp.findAllOrders();
		return orderList;
	}

}
