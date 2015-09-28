package com.dingdong.test;
import org.junit.Test;

import com.dingdong.pojo.Receiver;
import com.dingdong.service.ReceiverService;
public class ReceiverTest {
	@Test
	public void addReceiveTest(){
		ReceiverService receiverService = new ReceiverService();
		Receiver receiver = new Receiver();
		receiver.setAddress("长沙理工大学");
		receiver.setName("ahs");
		receiver.setReceiver_id(2);
		receiver.setTelephone("22222");
		receiver.setUser_id(3);
		receiverService.addReceiver(receiver);
	}
	@Test
	public void deleteReceiveTest(){
		ReceiverService receiverService = new ReceiverService();
		receiverService.deleteReceiverByID("2");
	}
	@Test
	public void updateReceiveTest(){
		ReceiverService receiverService = new ReceiverService();
		Receiver receiver = new Receiver();
		receiver.setAddress("长沙理工大学");
		receiver.setName("ahdfsfs");
		receiver.setReceiver_id(4);
		receiver.setTelephone("22222");
		receiver.setUser_id(3);
		receiver.setReceiver_id(2);
		receiverService.update(receiver);
	}
}
