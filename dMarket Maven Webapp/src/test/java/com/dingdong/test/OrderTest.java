package com.dingdong.test;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.dingdong.pojo.Order;
import com.dingdong.service.OrderService;

public class OrderTest {
	/**
	 * 创建订单测试
	 */
	@Test
	public void createOrderTest(){
		Order order = new Order();
		order.setExpressinfo("what");
		order.setOrderstates(100);
		order.setOrdertime(new Date());
		order.setReceiver_id(2);
		order.setTotalamount(100L);
		order.setUser_id(2);
		OrderService orderService = new OrderService();
		orderService.createOrder(order);
	}
	
	/**
	 * 更新订单测试
	 */
	@Test
	public void updateOrderTest(){
		Order order = new Order();
		order.setExpressinfo("发货");
		order.setOrderstates(100);
		order.setOrdertime(new Date());
		order.setReceiver_id(2);
		order.setTotalamount(100L);
		order.setUser_id(2);
		order.setOrder_id(1);
		OrderService orderService = new OrderService();
		orderService.updateOrder(order);
	}
	
	/**
	 * 通过订单号查找订单
	 */
	@Test
	public void findOrderByIDTest(){
		OrderService orderService = new OrderService();
		Order order = orderService.findOrderByID("1");
		System.out.println(order.getOrdertime());
	}
	
	@Test
	public void findOrderByUserIDTest(){
		OrderService orderService = new OrderService();
		List<Order> list = new ArrayList<Order>();
		list =   orderService.findOrdersByUserID(2);
		System.out.println("查询订单数量：" + list.size());
	}
	
	@Test
	public void findOrderByUserIdAndDateTest(){
		OrderService orderService = new OrderService();
		List<Order> list = new ArrayList<Order>();
		list =   orderService.findOrdersByUserIdAndDate("2", "2015-09-15 16:29:11");
		System.out.println(list.size());
	}
}
