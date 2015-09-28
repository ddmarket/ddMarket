package com.dingdong.dao;

import com.dingdong.pojo.Receiver;

public interface ReceiverMapper {
	public boolean addReceiver(Receiver receiver);

	public boolean deleteReceiverByID(int id);
	
	
	public boolean update(Receiver receiver);
}