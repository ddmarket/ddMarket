package com.dingdong.pojo;

public class Receiver {
	private Integer receiver_id;

	private Integer user_id;

	private String name;

	private String telephone;

	private String address;

	public Integer getReceiver_id() {
		return receiver_id;
	}

	public void setReceiver_id(Integer receiver_id) {
		this.receiver_id = receiver_id;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone == null ? null : telephone.trim();
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address == null ? null : address.trim();
	}
}