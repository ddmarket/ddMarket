package com.dingdong.test;
import org.junit.Test;

import com.dingdong.pojo.OrderDetail;
import com.dingdong.service.OrderDetailService;

public class OrderDetailTest {
	
	@Test
	public void createOrderDetailTest(){
		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setAccount(3);
		orderDetail.setAmount(100L);
		orderDetail.setOrder_id(1);
		orderDetail.setItem_id(3);
		OrderDetailService orderDetailService = new OrderDetailService();
		orderDetailService.createOrderDetail(orderDetail);
	}
	@Test
	public void findOrderDetailsByOrderIDTest(){
		OrderDetailService orderDetailService = new OrderDetailService();
		orderDetailService.findOrderDetailsByOrderID("1");
	}
	
	@Test
	public void findOrderDetailByIDTest(){
		OrderDetailService orderDetailService = new OrderDetailService();
		orderDetailService.findOrderDetailByID("1");
	}
}
