package com.dingdong.dao;

import java.util.List;

import com.dingdong.pojo.Receiver;

public interface ReceiverMapper {
	public boolean addReceiver(Receiver receiver);

	public boolean deleteReceiverByID(int id);

	public List<Receiver> selectByUserID(int uid);

	public boolean update(Receiver receiver);
}