package com.dingdong.dao;

import java.util.Date;
import java.util.List;

import com.dingdong.pojo.OrderDetail;

public interface OrderDetailMapper {
	public boolean createOrderDetail(OrderDetail OrderDetail);
	

	public boolean updateOrderDetail(OrderDetail OrderDetail);
	
	
	//花式查询
	public OrderDetail findOrderDetailByID(int id);

	public List<OrderDetail> findOrderDetailsByOrderID(int orderID);
	

	public int findSalesByItemID(String itemID,Date startDate);
}