package com.dingdong.service;

import java.util.List;

import com.dingdong.daoImp.ReceiverMapperlmp;
import com.dingdong.pojo.Receiver;

public class ReceiverService {

	/**
	 * 增加联系人
	 */
	public boolean addReceiver(Receiver receiver) {
		ReceiverMapperlmp receiverMapperlmp = new ReceiverMapperlmp();
		return receiverMapperlmp.addReceiver(receiver);

	}

	/**
	 * 根据联系人ID删除收货地址
	 * 
	 * @param id
	 * @return
	 */
	public boolean deleteReceiverByID(String id) {
		ReceiverMapperlmp receiverMapperlmp = new ReceiverMapperlmp();
		return receiverMapperlmp.deleteReceiverByID(Integer.parseInt(id));
	}

	/**
	 * 修改收货地址
	 * 
	 * @param receiver
	 * @return
	 */
	public boolean update(Receiver receiver) {
		ReceiverMapperlmp receiverMapperlmp = new ReceiverMapperlmp();
		return receiverMapperlmp.update(receiver);
	}

	// 根据用户名查找用户
	public List<Receiver> findReceiverByUserID(int uid) {
		ReceiverMapperlmp receiverMapperlmp = new ReceiverMapperlmp();
		return receiverMapperlmp.selectByUserID(uid);
	}

}
