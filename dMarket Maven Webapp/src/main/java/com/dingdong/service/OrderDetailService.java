package com.dingdong.service;

import java.util.Date;
import java.util.List;

import com.dingdong.daoImp.OrderDetailMapperlmp;
import com.dingdong.pojo.OrderDetail;

public class OrderDetailService {

	/**
	 * 创建详细订单表
	 * 
	 * @param OrderDetail
	 * @return
	 */
	public boolean createOrderDetail(OrderDetail OrderDetail) {
		OrderDetailMapperlmp orderDetailMapperlmp = new OrderDetailMapperlmp();
		return orderDetailMapperlmp.createOrderDetail(OrderDetail);
	}

	public boolean updateOrderDetail(OrderDetail OrderDetail) {
		return false;
	}

	/**
	 * 通过详细订单ID号查找详细订单信息
	 * 
	 * @param id
	 * @return
	 */
	public OrderDetail findOrderDetailByID(String id) {
		OrderDetailMapperlmp orderDetailMapperlmp = new OrderDetailMapperlmp();
		return orderDetailMapperlmp.findOrderDetailByID(Integer.parseInt(id));
	}

	/**
	 * 通过订单号查找详细订单信息
	 * 
	 * @param orderID
	 * @return
	 */
	public List<OrderDetail> findOrderDetailsByOrderID(String orderID) {
		OrderDetailMapperlmp orderDetailMapperlmp = new OrderDetailMapperlmp();
		return orderDetailMapperlmp.findOrderDetailsByOrderID(Integer
				.parseInt(orderID));
	}

	public int findSalesByItemID(String itemID, Date startDate) {

		return 0;
	}

}
