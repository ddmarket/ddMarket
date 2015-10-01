package com.dingdong.pojo;

import java.util.Date;

public class Order {
	private Integer order_id;

	private Integer user_id;

	private Long totalamount;

	private Integer receiver_id;

	private Integer orderstates;

	private String expressinfo;

	private Date ordertime;

	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public Long getTotalamount() {
		return totalamount;
	}

	public void setTotalamount(Long totalamount) {
		this.totalamount = totalamount;
	}

	public Integer getReceiver_id() {
		return receiver_id;
	}

	public void setReceiver_id(Integer receiver_id) {
		this.receiver_id = receiver_id;
	}

	public Integer getOrderstates() {
		return orderstates;
	}

	public void setOrderstates(Integer orderstates) {
		this.orderstates = orderstates;
	}

	public String getExpressinfo() {
		return expressinfo;
	}

	public void setExpressinfo(String expressinfo) {
		this.expressinfo = expressinfo == null ? null : expressinfo.trim();
	}

	public Date getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}
}