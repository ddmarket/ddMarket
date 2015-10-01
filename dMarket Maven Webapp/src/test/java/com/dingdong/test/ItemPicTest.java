package com.dingdong.test;

import org.junit.Test;

import com.dingdong.pojo.ItemPic;
import com.dingdong.service.ItemPicService;

public class ItemPicTest {

	@Test
	public void addItemPicTest() {
		ItemPic itemPic = new ItemPic();
		itemPic.setItem_id(1);
		itemPic.setPicUrl("xxx");
		ItemPicService itemPicService = new ItemPicService();
		itemPicService.addItemPic(itemPic);
	}

	@Test
	public void findItemPicsByItemIDTest() {
		ItemPicService itemPicService = new ItemPicService();
		itemPicService.findItemPicsByItemID("1");
	}

}
